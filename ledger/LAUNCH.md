# Launch a new publicrecords Actor across every surface

Times and “today” in this file refer to the ledger snapshot of 23 Nov 2026, America/Toronto (EST, UTC-5).

This is the ordered playbook for adding a **new Apify Actor** (`publicrecords/<actor-slug>`) to every distribution surface we already touch. The companion script is `ledger/launch_new_actor.sh <actor-slug>` (dry-run by default; it never publishes).

Actor map: `ledger/actor_map.csv` (17 current Actors, dedicated registry server, bundles, skill folder). Surfaces: `ledger/surfaces.csv`. Per-Actor status: `ledger/placements.csv`.

## Rules (read first)

1. **No secrets.** Never commit, print, or put in a public form: the publicrecords Apify credential, Glama custom-header credential, ClawHub login credential, vault passwords, or any token value. Vault **ids** (for example 6000163, 6000563) are allowed. Users run Actors on **their own** Apify account via `mcp.apify.com`.
2. **No duplicate registry entries.** One Official MCP Registry name per server (`io.github.GeminiGeorge22/<slug>`). Do **not** publish `<slug>-<lang>` copies (moderation policy: same server under different names). The substitute is a row in the 14 localized READMEs.
3. **No new PR on a list where we already have an open PR.** Amend the open PR, or wait for merge and then send **one** combined PR. Check `surfaces.csv` column `how_new_actor_added` and any “Open PRs” note before opening anything. punkpeye/awesome-mcp-servers already has multiple open PRs — do not add another.
4. **No duplicate directory entries.** If a directory keys on the endpoint (`mcp.apify.com`) or the repo, one listing is enough (MCP Collection collapsed 13 submits into a duplicate on 23 Nov 2026).
5. **No paid lanes** (mcp.so, MCP Market fast lane, HOL Blue/Gold, Agensi, etc.) without Mark.
6. **MKT-GO-1 still stops** coach emails, Actor pitches, X, Reddit, Etsy-owned surfaces, and outreach emails (contact forms count as outreach). `bestmcp.it` stays a draft in the 23 Nov intl note, not sent.
7. **Store listings, Actor code, builds, prices, input schema** are Master’s. This playbook only covers distribution surfaces.
8. Sign-ups that need an email use `mark-merchand-zs9fmg@mail.grokbot.com`. GitHub identity is `GeminiGeorge22`.

## Ordered steps

### A. Scriptable (run via `launch_new_actor.sh`, or by hand)

Do these first. They unlock auto-import mirrors.

1. **Official MCP Registry (required hub).**  
   Add `servers/<slug>/server.json` in [GeminiGeorge22/publicrecords-mcp](https://github.com/GeminiGeorge22/publicrecords-mcp) (template printed by the script; pattern from `gen_servers.py`). Remote-only endpoint: `https://mcp.apify.com?tools=publicrecords/<actor-slug>`. Push to `main` (or merge a PR). Workflow `.github/workflows/publish-mcp-servers.yml` logs in with GitHub OIDC and runs `mcp-publisher publish`. It skips versions that already exist.  
   **Do not** run `mcp-publisher` with a personal credential on a laptop if OIDC is available.

2. **Localized READMEs.**  
   Add one row (title, description, endpoint, Glama + registry links) to `README.md` and all 14 `README.<lang>.md`. Translations must follow the registry title/description; no new claims. Prefer a commit that does not touch `servers/**` unless you also intend to publish.

3. **publicrecords-skills pack (covers all skill/plugin surfaces that auto-update).**  
   From `/workspace/ai-dist` (or a checkout of [GeminiGeorge22/publicrecords-skills](https://github.com/GeminiGeorge22/publicrecords-skills)): extend the matching skill or add a skill with `gen_skills.py`, add the Actor to the fleet `?tools=` list, bump the version, tag a release, push. Clients that already added this marketplace pick up the new skill from the repo.

4. **ClawHub republish (after the skill exists).**  
   CLI, logged in as GeminiGeorge22, credential never printed:  
   `clawhub skill publish ./skills/<folder> --slug publicrecords-<folder> --name "<title>" --version <ver>`  
   Always `--dry-run` first. Prefer updating an existing skill slug rather than a new duplicate slug.

5. **MCP Collection API — usually skip.**  
   `submit_mcpcollection.py` posts to `https://mcpcollection.com/api/submit`. The directory collapses `mcp.apify.com` endpoints. 13 per-Actor submits were rejected as duplicate on 23 Nov 2026. Do not resubmit unless the new Actor has a **non-Apify** endpoint (it will not).

### B. Auto-update after A (no form)

These pick up the registry or the skills repo. Recheck the next day, then weekly.

| Surface | Trigger | Recheck |
|---|---|---|
| Glama | registry auto-import (claim/quality scores still need Mark) | next day |
| PulseMCP | registry (submissions paused; mirror only) | weekly |
| SarnAI Agent Discovery Board | registry | weekly |
| wellknown.network | registry | weekly |
| mcpprotocol.ru | registry feed | n/a |
| Socketlist | GitHub topic `mcp-server` on the repo | next day |
| Gemini CLI extension gallery | topic / daily crawl | 24 Nov 2026, then weekly |
| SkillsMP | GitHub `SKILL.md` crawl | 24 Nov 2026, then weekly |
| skills.sh | install telemetry (`npx skills add GeminiGeorge22/publicrecords-skills`) | after an install |
| Claude Code / Codex own marketplaces | repo already added by the user | automatic |
| Kiro custom power import | GitHub URL already works | automatic |
| Cursor / VS Code deeplinks | README `?tools=` list | on README push |

### C. Browser forms (Marketer can file)

Contact email: `mark-merchand-zs9fmg@mail.grokbot.com`. One entry per server or one skills-repo URL. Check for an existing listing first.

**Skills pack (usually one submit, or one per skill folder):**

- **SkillBazaar:** already live (8 skills, Unverified, 23 Nov 13:21 ET). New Actor: https://skillbazaar.ai/dashboard/new — paste `https://github.com/GeminiGeorge22/publicrecords-skills/tree/main/skills/<folder>`. Sign-in: GitHub GeminiGeorge22.
- **SkillzBench:** repo already queued for review. Wait for the crawl; resubmit the repo URL only if they ask. Vault id 6000163 (id only).
- **AgentForge:** fleet plugin submitted 23 Nov 13:20 ET (48-hour review). Do not file a second entry. Vault id 6000563 (id only). Recheck 25 Nov 2026.
- **HOL plugin registry claim:** **wait until** [hashgraph-online/awesome-codex-plugins #788](https://github.com/hashgraph-online/awesome-codex-plugins/pull/788) merges, then free claim only: https://hol.org/guard/plugins?claim=GeminiGeorge22%2Fpublicrecords-skills — never paid HOL tiers.
- **Grok Bot marketplace:** https://x.ai/bot/marketplace/submit-a-plugin. **Held until an in-app test is done.** Do not tick “tested locally and in-app” first. Plugin URL = the skills repo. Distinct from Grok Build PR #2237, which is already open.

**General MCP directories — the 13 dedicated servers published 23 Nov 2026 are filed or held.** Surface status was already live or submitted, so `counts.json` totals did not change. A brand-new Actor still uses the form only when it is not already covered. No second entry.

- https://mcpservers.org/submit — 11 dedicated servers submitted (Free plan, ~2-week review). Etsy (etsy-search-scraper, etsy-shop-velocity) is covered by existing etsy-sales-mcp.
- https://cursor.directory — 11 plugins submitted (GitHub sign-in; some pending security scan). Plugin URLs are on the placement rows. company-social-mcp, etsy-sales-mcp, and google-ads-transparency-mcp-competitor-ads already exist; sports-odds stays live.
- https://mcp.directory/submit — 13 dedicated servers submitted.
- https://mcpcatalog.dev/submit — 13 dedicated servers submitted.
- https://trackmcp.com/submit-mcp — 1 repo-root listing covering all 13 (Cloudflare; real browser). Do not file 13 separate forms for that repo root.
- https://mcpmarket.com/submit — not submitted. Paid $29 only; those 13 placement rows are `held-needs-Mark`. sports-odds stays the earlier submitted row. Do not pick the paid lane without Mark.

**International directories (6 flagship/bundle repos filed 23 Nov 2026; they already cover all 17 Actors).** A brand-new Actor is usually covered by updating the matching bundle (gov-tenders, ats-jobs, etsy-sales, or a new dedicated server if it is a new niche). File a new form only if it is not already covered. No duplicates (serveurmcp may already have a duplicate ats-jobs; MCP Türkiye already had a Company Social duplicate).

- serveurmcp.com (fr)
- ALMC Security (es)
- mcpmarket.cn (zh, GitHub sign-in)
- MCP Türkiye (tr)
- **Skip gensapps.com** — rejects query-string MCP URLs; Apify requires `?tools=`.

### D. PR / issue lists

Before any PR: search `surfaces.csv` for an **open** PR from GeminiGeorge22 on that repo.

- If open: push a commit onto that PR branch (or comment and amend). Do not open a second PR.
- If merged, and the new Actor is not in the list: one new combined PR.
- If we have never contacted that list, and it is on-topic: one PR is allowed.

Open vehicles as of this snapshot (do not stack more PRs on these):

- https://github.com/xai-org/plugin-marketplace/pull/2237 (Grok Build; pin SHA)
- https://github.com/hashgraph-online/awesome-codex-plugins/pull/788
- https://github.com/github/awesome-copilot/issues/6582 (issue form; comment, do not open a second issue)
- https://github.com/apify/awesome-skills/pull/139
- https://github.com/abordage/awesome-mcp/pull/289 (description fix)
- https://github.com/cline/marketplace/pull/349
- https://github.com/docker/mcp-registry/pull/6511, #6512, #6513, #6514 (Docker reviewer credentials are a Mark decision; never send our Apify credential)
- https://github.com/Kilo-Org/kilo-marketplace/pull/612 and #613
- Multiple open PRs on punkpeye/awesome-mcp-servers and punkpeye/awesome-remote-mcp-servers — amend, do not add another

`sickn33/agentic-awesome-skills` #1767 is already merged; a follow-up is allowed only if no open PR remains.

### E. Held for Mark (default skip)

Do not file these until Mark approves. Named 23 Nov 2026 (default skip): Anthropic directory, OpenAI plugin directory, Cursor Marketplace publisher, Kiro curated registry, Piebald-AI/awesome-gemini-cli-extensions (star yes/no), hesreallyhim/awesome-claude-code (human submitter only), Microsoft 365 Agent Store, AWS Marketplace, Perplexity connectors (company partnership form, 68/51 questions, OAuth would be Apify’s).

Also held from earlier MCP-LIST-1 work: LobeHub (`lhm` OAuth), GitHub MCP Registry (partnerships email), PlayMCP Kakao, bestmcp.it (email stop), plus ~50 small account-gated directories and API hubs (RapidAPI, Zyla, API.market, APILayer, Postman). Full list: `status=held-needs-Mark` in `surfaces.csv`.

Smithery is **not** held — it is skipped (product ended 31 Oct 2026). Continue Hub is **skipped** (hosted Hub shut down 15 Jul 2026, NXDOMAIN; Continue acquired by Cursor).

## What “left to do” means (23 Nov 2026 snapshot)

- **New surfaces we can still file:** 2 — Grok Bot marketplace (after in-app test) and HOL claim (after #788 merges). Source: `ledger/counts.json` `remaining_names`.
- **Outstanding forms on the six general directories above:** none for the 13 dedicated servers. They were submitted or held on 23 Nov 2026 (TrackMCP is one repo-root listing; MCP Market was not submitted). Source: `placements.csv`. The earlier 78-form browser queue is superseded.
- **Pending reviews to recheck 24–25 Nov 2026:** ClawHub scans, AgentForge 48h, SkillzBench, Launch MCP, Gemini gallery, SkillsMP, Socketlist, intl form go-lives, awesome-copilot #6582, xai #2237, hashgraph #788.
- **Held-needs-Mark:** 63 surfaces (default skip unless Mark says go). Source: `ledger/counts.json`.
- **Skipped / n-a / defunct / out of scope:** 111 surfaces. Do not rediscover and refile these.

## Scriptable command cheat-sheet

```bash
# Always dry-run first (default). Prints the plan and the manual checklist. Does not publish.
ledger/launch_new_actor.sh <actor-slug>

# Same, explicit:
ledger/launch_new_actor.sh <actor-slug> --dry-run
```

The script refuses `--apply` / live publish. Carry out A–D by hand from its checklist after you have reviewed the plan.
