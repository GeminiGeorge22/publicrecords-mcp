#!/usr/bin/env bash
# Launch plan for a new publicrecords Actor across every ledger surface.
# Dry-run by default. Never publishes, never prints secrets, never calls
# mcp-publisher / clawhub / MCP Collection / any directory API.
set -euo pipefail

usage() {
  cat <<EOF
Usage: ledger/launch_new_actor.sh <actor-slug> [--dry-run]

Prints the scriptable steps and the manual-form checklist for adding
publicrecords/<actor-slug> to every surface in ledger/surfaces.csv.

--dry-run is the default and the only supported mode. The script does
not write repo files, does not commit, and does not publish.
EOF
}

SLUG=""
MODE="dry-run"
for arg in "$@"; do
  case "$arg" in
    -h|--help) usage; exit 0 ;;
    --dry-run) MODE="dry-run" ;;
    --apply|--live|--publish)
      echo "Refusing to run live. This script is dry-run only (ledger/LAUNCH.md)." >&2
      echo "It will not publish to the Official MCP Registry, ClawHub, or any directory." >&2
      exit 2
      ;;
    -*)
      echo "Unknown option: $arg" >&2
      usage
      exit 2
      ;;
    *)
      if [[ -z "$SLUG" ]]; then SLUG="$arg"; else echo "Unexpected arg: $arg" >&2; usage; exit 2; fi
      ;;
  esac
done

if [[ -z "$SLUG" ]]; then usage; exit 2; fi
if [[ ! "$SLUG" =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]]; then
  echo "actor-slug must be lowercase kebab-case (got: $SLUG)" >&2
  exit 2
fi

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MAP="$HERE/actor_map.csv"
LAUNCH="$HERE/LAUNCH.md"

SERVER="${SLUG}-mcp"
SKILL="(pick or create a skill folder)"
BUNDLES="(none yet — add to an existing bundle if the Actor fits)"
EXISTING="no"
if [[ -f "$MAP" ]]; then
  rec="$(python3 -c '
import csv,sys
path,slug=sys.argv[1],sys.argv[2]
with open(path) as f:
    for r in csv.DictReader(f):
        if r["actor"]==slug:
            print(r["dedicated_registry_server"])
            print(r["skill_folder"])
            print(r["bundle_servers"])
            sys.exit(0)
sys.exit(1)
' "$MAP" "$SLUG")" && EXISTING="yes" || true
  if [[ "$EXISTING" == "yes" ]]; then
    SERVER="$(printf "%s\n" "$rec" | sed -n "1p")"
    SKILL="$(printf "%s\n" "$rec" | sed -n "2p")"
    BUNDLES="$(printf "%s\n" "$rec" | sed -n "3p")"
  fi
fi

REG_NAME="io.github.GeminiGeorge22/${SERVER}"
ENDPOINT="https://mcp.apify.com?tools=publicrecords/${SLUG}"
STORE="https://apify.com/publicrecords/${SLUG}"
SKILLS_REPO="https://github.com/GeminiGeorge22/publicrecords-skills"
MCP_REPO="https://github.com/GeminiGeorge22/publicrecords-mcp"

cat <<EOF
================================================================
publicrecords/${SLUG} — launch plan (DRY-RUN, no publishes)
================================================================
Existing fleet Actor?  ${EXISTING}
Dedicated server:      ${SERVER}
Registry name:         ${REG_NAME}
Endpoint:              ${ENDPOINT}
Store page (Master):   ${STORE}
Skill folder:          ${SKILL}
Bundle servers:        ${BUNDLES}

Read ${LAUNCH} before doing any of this.

----------------------------------------------------------------
A. SCRIPTABLE (this script only prints; you run these by hand)
----------------------------------------------------------------

1) Official MCP Registry — add servers/${SERVER}/server.json in publicrecords-mcp
   Pattern (fill title + description from the Store page; description <= 100 chars;
   no prices; no secrets). Then merge/push to main so publish-mcp-servers.yml runs
   (GitHub OIDC mcp-publisher). Do not publish language-suffixed duplicates.

{
  "\$schema": "https://static.modelcontextprotocol.io/schemas/2025-12-11/server.schema.json",
  "name": "${REG_NAME}",
  "title": "<TITLE FROM STORE, short>",
  "description": "<DESCRIPTION <=100 chars, no prices>",
  "version": "1.0.0",
  "websiteUrl": "${STORE}",
  "repository": {
    "url": "${MCP_REPO}",
    "source": "github",
    "subfolder": "servers/${SERVER}"
  },
  "remotes": [{
    "type": "streamable-http",
    "url": "${ENDPOINT}",
    "headers": [{
      "name": "Authorization",
      "description": "Optional if you use Apify OAuth. Otherwise: Bearer with your own Apify API token.",
      "isRequired": false,
      "isSecret": true
    }]
  }]
}

2) Localized READMEs — add a row to README.md and all 14 README.<lang>.md
   (title, description, endpoint, Glama + registry links). Follow registry wording.

3) Skills pack — in publicrecords-skills, extend skill "${SKILL}" (or add a skill)
   with gen_skills.py, add publicrecords/${SLUG} to the fleet tools list, bump
   version, tag, push. Repo: ${SKILLS_REPO}

4) ClawHub — after the skill exists, from a skills checkout, logged in as
   GeminiGeorge22 (never print the credential):
   clawhub skill publish ./skills/${SKILL} --slug publicrecords-${SKILL} --name "<title>" --version <ver>
   Use --dry-run first. Prefer republishing an existing slug.

5) MCP Collection API — SKIP for Apify-hosted endpoints (duplicates collapse).
   See ledger/LAUNCH.md section A.5.

----------------------------------------------------------------
B. AUTO-UPDATE (no form) — recheck next day
----------------------------------------------------------------
  Glama, PulseMCP, SarnAI, wellknown.network, Socketlist (topic mcp-server),
  Gemini CLI gallery, SkillsMP, skills.sh (after npx skills add),
  own Claude Code / Codex marketplaces, Kiro import, README deeplinks.

----------------------------------------------------------------
C. MANUAL FORM CHECKLIST
----------------------------------------------------------------
Skills / plugins
  [ ] SkillBazaar https://skillbazaar.ai/dashboard/new
      paste ${SKILLS_REPO}/tree/main/skills/${SKILL}
      (GitHub sign-in GeminiGeorge22). Skip if this skill folder is already live.
  [ ] SkillzBench — already submitted for the repo; wait for crawl unless asked.
  [ ] AgentForge — already submitted 2026-11-23; do not file a second entry.
  [ ] HOL claim — ONLY after hashgraph-online/awesome-codex-plugins #788 merges
      https://hol.org/guard/plugins?claim=GeminiGeorge22%2Fpublicrecords-skills
      Free claim only; never paid tiers.
  [ ] Grok Bot marketplace https://x.ai/bot/marketplace/submit-a-plugin
      ONLY after an in-app test. Do not tick tested first. Plugin = ${SKILLS_REPO}
      (Grok Build PR #2237 is a different surface and is already open.)

General MCP directories (one form per dedicated or bundle server; check existing first)
  The 13 dedicated servers published 2026-11-23 are already submitted or held.
  Do not refile them. See ledger/LAUNCH.md section C.
  [ ] mcpservers.org/submit — Etsy already covered by etsy-sales-mcp
  [ ] cursor.directory (Submit plugin; GitHub sign-in; security scan)
      company-social-mcp, etsy-sales-mcp, google-ads plugin, and sports-odds already exist
  [ ] mcp.directory/submit  — 13 dedicated servers submitted 2026-11-23
  [ ] mcpcatalog.dev/submit — 13 dedicated servers submitted 2026-11-23
  [ ] trackmcp.com/submit-mcp — 1 repo-root listing already covers those 13
  [ ] mcpmarket.com/submit  — paid \$29 only; held-needs-Mark. Do not submit without Mark.

International (6 bundles already filed 2026-11-23 and cover the current 17 Actors)
  [ ] Update the matching bundle (ats-jobs / gov-tenders / etsy-sales / or a new
      dedicated server if this is a new niche) rather than filing a duplicate.
  [ ] serveurmcp.com / ALMC / mcpmarket.cn / MCP Türkiye — file only if not covered.
  [ ] SKIP gensapps.com (rejects query URLs).

PR / issue lists — NO new PR where we already have an open PR.
  [ ] Search ledger/surfaces.csv for open PRs on the target repo; amend those.
  Open vehicles as of 2026-11-23 include: xai-org/plugin-marketplace #2237,
  hashgraph-online/awesome-codex-plugins #788, github/awesome-copilot #6582,
  apify/awesome-skills #139, abordage/awesome-mcp #289, cline/marketplace #349,
  docker/mcp-registry #6511-#6514, Kilo-Org/kilo-marketplace #612 #613,
  and multiple punkpeye PRs. See LAUNCH.md section D.

Held for Mark (default skip) — do not file:
  Anthropic directory, OpenAI directory, Cursor Marketplace, Kiro registry,
  Piebald, awesome-claude-code, Microsoft 365, AWS, Perplexity connectors,
  LobeHub, GitHub MCP Registry, PlayMCP Kakao, bestmcp.it, and every other
  surfaces.csv row with status=held-needs-Mark.

Skipped / defunct — do not file:
  Smithery, Continue Hub, gensapps.com, mcp.so (paid, declined), language-suffixed
  registry entries, and every surfaces.csv row with status=skipped.

----------------------------------------------------------------
Mode: ${MODE}. No files written. No publishes attempted.
EOF
