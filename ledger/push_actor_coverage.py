#!/usr/bin/env python3
"""Bring a publicrecords Actor up to the same portfolio coverage as the older fleet.

Usage (always dry-run first):

    python3 ledger/push_actor_coverage.py --dry-run pdf-docx-to-markdown audio-file-transcriber
    python3 ledger/push_actor_coverage.py --plan-only tech-stack-detector dns-lookup

Key the command on the Apify Store slug (publicrecords/<slug>). Confirm the slug
from the live Store page before a 11-26/27 run. Suggested upcoming slugs
(confirm when they go public):

    tech-stack-detector, dns-lookup, crossref, phone-validator,
    wikipedia-exchange-rates, crypto-wallet, gleif-lei-lookup,
    qr-code-generator, daily-facts-reference

This script prints a re-runnable checklist. It does not dispatch GitHub Actions,
open PRs on repos we do not own, print secrets, spend money, or file browser
forms. Official Registry publish is via mcp-publisher on the box (see --registry).
Email Verifier copy must always say domain / MX / disposable, not the mailbox.
Do not add or promote the Skool Actor on new listings.

Hard rules: Public Records brand only; no new PRs on unowned repos (edits on our
existing open PRs are allowed if the PR is a general Public Records pack, not a
Skool-only or single-niche listing); no duplicates — group under an existing
slug or entry; every path bills through the user's own Apify account.
"""
from __future__ import annotations

import argparse
import csv
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
LEDGER = Path(__file__).resolve().parent

# Store slug -> skills folder / ClawHub slug suffix / registry server name
SKILL_FOLDER = {
    "pdf-docx-to-markdown": "pdf-to-text",
    "audio-file-transcriber": "audio-to-text",
    "url-to-markdown": "web-page-to-markdown",
    "js-page-to-markdown": "js-page-to-markdown",
    "email-verifier": "email-verifier",
}

EMAIL_COPY = (
    "checks the syntax, the domain, MX records and disposable domains, not the mailbox. "
    "No mail is sent and it does not do an SMTP check. It is not a mailbox verifier. "
    "A deliverable_domain verdict only means the domain and its MX records can receive mail."
)

STEPS = """
Ordered steps for each Store slug (dry-run the command first):

1. Verify the Actor is public: GET https://api.apify.com/v2/acts/publicrecords~<slug>
   and the Store page HTTP 200. Take copy only from the live Store / default-build README.
2. publicrecords-mcp catalogs (own repo, [skip ci] PR, no Actions):
   servers/<slug>-mcp/server.json (description <=100 chars, no prices),
   README.md + 14 README.<lang>.md, mcp.json, n8n/Make, OpenAPI, Postman,
   ledger/actor_map.csv. Email Verifier must use the domain/MX/disposable wording.
3. Official MCP Registry from the box, not GitHub Actions:
   Install mcp-publisher v1.8.3 from the same release the workflow uses.
   mcp-publisher login github -token (existing GeminiGeorge22 token; never print it).
   validate + publish servers/*/server.json; skip versions that already exist.
   Read back: https://registry.modelcontextprotocol.io/v0.1/servers?search=io.github.GeminiGeorge22/<server>
4. publicrecords-skills (own repo, [skip ci]): add or extend skills/<folder>/SKILL.md,
   add the Actor to the fleet mcp.json ?tools= list, bump the pack version, push.
   Clients that already added this marketplace pick up the skill from the repo.
5. ClawHub, after the skill exists, logged in as GeminiGeorge22 (never print the token):
   clawhub skill publish ./skills/<folder> --slug publicrecords-<folder> --name "<title>" --version <ver> --dry-run
   then the same without --dry-run. Prefer updating an existing slug. Recheck
   https://clawhub.ai/geminigeorge22/skills/publicrecords-<folder> logged-out.
6. Hugging Face (account Publicrecords): one README-real sample dataset + static
   Space per Actor, added to the existing collection (no second collection, no
   invented rows, no copyrighted full-text, no secrets). Do not count per-language
   README sections as separate surfaces.
7. Publisher site (GeminiGeorge22/GeminiGeorge22.github.io): hub + how-to + llms.txt + sitemap.
8. Sayba: PATCH the existing free slug public-records-mcp (no new slug). Agentel:
   new version of the same slug only after approval; no second slug.
9. Recheck auto-import (logged-out): Glama connectors, PulseMCP, SarnAI, Socketlist,
   SkillsMP, Gemini CLI gallery, wellknown.network. Mark live only with a raw read-back.
10. Agent networks (keys in /home/box/apify-marketer/agent-networks/): do not publish
    a second listing. Edit the existing how-to in place if the site allows it.
    Skip hidden-instruction sites (1VR). No Skool. Respect each site's posting rules.
11. Existing open PRs we authored on unowned repos: amend only general Public Records
    pack/skills PRs that are still open. Do not open a new PR. Do not amend Skool-only
    or single-niche (sports/Etsy/ads-only) PRs with unrelated Actors.
12. Browser forms, dev.to, Product Hunt and similar: do not attempt from the box.
    List each as blocked:browser with the URL and the fields below.
13. Record the run in ledger/followups/ and update placements.csv (CRLF, QUOTE_MINIMAL,
    do not rewrite unrelated rows). Headline counts are distinct surfaces, not matrix rows.

Standard fields for a browser form or article (one pack entry where the surface allows):

- Name / title: the Store title, or "Public Records MCP" for a pack launch
- Author / publisher: Public Records
- Store: https://apify.com/publicrecords/<slug>
- MCP: https://mcp.apify.com?tools=publicrecords/<slug>
- Registry: https://registry.modelcontextprotocol.io/v0.1/servers?search=io.github.GeminiGeorge22/<slug>-mcp
- Skills pack: https://github.com/GeminiGeorge22/publicrecords-skills
- Skill folder: https://github.com/GeminiGeorge22/publicrecords-skills/tree/main/skills/<folder>
- Description: Store README description (Email Verifier: {email_copy})
- Contact: mark-merchand-zs9fmg@mail.grokbot.com
- Pricing: pay-per-use on the user's own Apify account; current rates on the Store page
- Disclosure: published by the publicrecords maintainer on Apify Store
- Do not file a second listing if a Public Records pack entry already exists
""".format(email_copy=EMAIL_COPY)


def load_csv(path: Path):
    with path.open(newline="") as f:
        return list(csv.DictReader(f))


def main(argv=None) -> int:
    p = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument("slugs", nargs="+", help="Apify Store slugs (publicrecords/<slug>)")
    p.add_argument("--dry-run", action="store_true", default=True, help="Print the plan only (default)")
    p.add_argument("--plan-only", action="store_true", help="Alias for --dry-run")
    p.add_argument("--registry", action="store_true", help="Also print the mcp-publisher command block")
    args = p.parse_args(argv)

    print("publicrecords coverage planner")
    print("Rules: no Actions, no new PRs on unowned repos, no spend, no secrets,")
    print("no Skool on new listings, no mailbox wording for email-verifier,")
    print("group under existing slugs, bill through the user's own Apify account.")
    print()
    for slug in args.slugs:
        folder = SKILL_FOLDER.get(slug, slug)
        server = f"{slug}-mcp" if slug != "sports-odds-api" else "sports-odds-api"
        print(f"## {slug}")
        print(f"  Store:     https://apify.com/publicrecords/{slug}")
        print(f"  MCP:       https://mcp.apify.com?tools=publicrecords/{slug}")
        print(f"  Registry:  https://registry.modelcontextprotocol.io/v0.1/servers?search=io.github.GeminiGeorge22/{server}")
        print(f"  Skill:     skills/{folder}/  (ClawHub slug publicrecords-{folder})")
        print(f"  Hub:       https://geminigeorge22.github.io/{slug}/")
        if slug == "email-verifier":
            print(f"  COPY:      {EMAIL_COPY}")
        print()
    print(STEPS)
    print("This invocation is a plan only. Run the owned-repo and CLI steps by hand")
    print("or with the commands above, then record read-backs in ledger/followups/.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
