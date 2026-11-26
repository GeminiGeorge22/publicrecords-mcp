# Distribution ledger

Snapshot of every distribution surface the publicrecords Apify Actor fleet touches, plus a playbook to launch a new Actor across them.

**As of:** 2026-11-25 17:28 America/Toronto

| File | What |
|---|---|
| [surfaces.csv](./surfaces.csv) | One row per surface |
| [placements.csv](./placements.csv) | Surface × Actor status matrix (operational; not a listings total) |
| [actor_map.csv](./actor_map.csv) | Dedicated server, bundles, skill folder per Actor |
| [LAUNCH.md](./LAUNCH.md) | Ordered playbook |
| [launch_new_actor.sh](./launch_new_actor.sh) | Dry-run planner (`./launch_new_actor.sh <actor-slug>`) |
| [push_actor_coverage.py](./push_actor_coverage.py) | Re-runnable coverage planner keyed on the Store slug (`python3 ledger/push_actor_coverage.py --dry-run <slug>`) |
| [counts.json](./counts.json) | The counts below, machine-readable |

## Counting rule (25 Nov 2026, America/Toronto)

Headline counts are **distinct surfaces** — unique distribution listings with a read-back URL. They live in `counts.json` (`total_surfaces`, `live`, `submitted_pending`, `remaining_to_do`, `held_needs_Mark`, `skipped`).

Per-language `README.<lang>.md` files, own-repo manifests, and n8n/Make/Postman recipe files are **not** separate surfaces. They roll up to the parent repo listing (`publicrecords-mcp localized READMEs (14 languages)` and `GeminiGeorge22 publicrecords-*-examples (multilingual READMEs)`). The n8n template gallery, Make share link, and Postman Public API Network remain their own surfaces.

`placements.csv` is an operational surface×actor status matrix, including `not-listed` rows for Actors not yet on a surface. **`placements_rows` is not a count of listings.** On 25 Nov 2026 that matrix had been reported as 23,309 rows, which inflated the totals (see `counts.json` `correction_reason`).

| Bucket | Before correction | After (25 Nov 17:28) | Meaning |
|---|---:|---:|---|
| Distinct surfaces | 972 | **829** | Unique listings after dropping 140 per-language README files and 3 own-repo recipe-file surfaces |
| Live | 304 | **161** | Distinct surfaces with a read-back listing |
| Submitted / pending | 367 | **367** | Form/API/PR/auto-import in flight, not confirmed live |
| Remaining to file | 58 | **58** | Named in `counts.json` `remaining_names` |
| Held, needs Mark | 31 | **31** | Default skip unless Mark says go (`held_names`) |
| Skipped / n-a / defunct | 212 | **212** | Out of scope, declined, blocked, or dead |
| Placement matrix rows | 23,309 | 19,877 | Operational surface×actor rows, not a listings total |
| Placement rows with status=live | 1,741 | 1,285 | Actor-on-surface status only; do not use as the headline live count |

An earlier 23 Nov 2026 baseline (307 surfaces, 59 live, 5,526 placement rows) is historical and is not the current headline.

## What is still left to do (not just the 2 remaining surfaces)

1. **Two new surfaces we can still file:** Grok Bot marketplace (after an in-app test) and HOL plugin registry claim (after [hashgraph-online/awesome-codex-plugins #788](https://github.com/hashgraph-online/awesome-codex-plugins/pull/788) merges). Source: `counts.json` `remaining_names`.
2. **78 outstanding browser forms on surfaces we already touch:** the 13 dedicated servers published 23 Nov 2026 × 6 directories (mcpservers.org, cursor.directory, mcp.directory — check auto-import first, mcpcatalog.dev, TrackMCP, MCP Market Free Queue). Source: `/workspace/mcp-fleet-2026-11-23/browser-queue.csv` (81 rows; 78 are those six directories; 3 are Mark-login rows). Placement status for those 13 Actors on those directories is `remaining`.
3. **Rechecks 24–25 Nov 2026:** ClawHub security scans, AgentForge 48-hour review (25 Nov), SkillzBench, Launch MCP, Gemini CLI gallery, SkillsMP, Socketlist, international form go-lives, [awesome-copilot #6582](https://github.com/github/awesome-copilot/issues/6582), [xai-org/plugin-marketplace #2237](https://github.com/xai-org/plugin-marketplace/pull/2237), hashgraph #788.
4. **63 held-needs-Mark, default skip** unless Mark says go. Named on 23 Nov: Anthropic directory, OpenAI directory, Cursor Marketplace, Kiro registry, Piebald, awesome-claude-code, Microsoft 365, AWS, Perplexity connectors. The rest are the older MCP-LIST-1 account-gated backlog (LobeHub, GitHub MCP Registry, PlayMCP Kakao, bestmcp.it, API hubs, etc.). Full list: `counts.json` `held_names`.

## Status vocabulary

- `live` — listing is up (or skills are imported / repo shipped).
- `submitted` — PR open, form/API queued, or auto-import pending.
- `remaining` — we can still file it, with a noted prerequisite.
- `held-needs-Mark` — default skip until Mark approves.
- `skipped` — n-a, blocked, declined, defunct, or out of scope.
- `not-listed` — placements only (see above).

## Sources

Primary inputs (box paths, 23 Nov 2026):

- `/workspace/mcp-fleet-2026-11-23/tracker.csv`
- `/workspace/mcp-fleet-2026-11-23/existing_state.csv`
- `/workspace/mcp-fleet-2026-11-23/raw/fleet-orders_mcp-lists_2026-11-23.csv` (copy of `GeminiGeorge22/fleet-orders` `channels/mcp-lists.csv`; 405 rows → 250 canonical surfaces before today’s additions)
- `/workspace/mcp-fleet-2026-11-23/universe.md`
- `/workspace/mcp-fleet-2026-11-23/intl-1123.md`, `intl-browser-queue.csv`
- `/workspace/mcp-fleet-2026-11-23/ai-distribution-1123.md`, `ai-dist-browser-queue.csv`, `fleet_map.csv`, `fixes-1123.md`, `clawhub-publish-1123.log`
- `GeminiGeorge22/publicrecords-mcp` README.zh-CN.md (24 registry servers), commit `ec94f86`
- `GeminiGeorge22/publicrecords-skills` v1.0.0, HEAD `4d8b607`

Today’s results that were **not yet in those files** and were applied on top:

- AgentForge submitted 13:20 ET (review within 48 hours; account grokbot email; vault id 6000563)
- ClawHub: 8 skills `publicrecords-<name>@1.0.0` pending security scans (CLI as GeminiGeorge22)
- SkillzBench queued for review (vault id 6000163)
- Launch MCP skills-bundle submission confirmed by email (`e2dcaf37-cf64-41c1-8dc1-8269788d5c60`)
- SkillBazaar DONE 13:21 ET via GitHub sign-in (GeminiGeorge22); 8 skills live, marked Unverified, URLs return 200, category Other
- Continue Hub = defunct (hosted Hub shut down 15 Jul 2026, NXDOMAIN; Continue acquired by Cursor)
- Perplexity connectors = needs-Mark, default skip (company partnership form, 68 questions / 51 required; OAuth would be Apify’s)
- HOL claim still waits on #788 (OPEN)
- International forms: serveurmcp 6 (ats-jobs maybe duplicate), almc.es 6, mcpmarket.cn 6, MCP Türkiye 6 + 1 duplicate (Company Social); gensapps skipped (rejects query URLs)

`tools/work_clone.sh` was not used: it is not present under `/workspace/fleet-orders/tools/`. The MCP-LIST-1 snapshot already on disk was used read-only. No fleet-orders checkout was created or deleted.

## universe.md coverage

Every named directory in the 23 Nov `universe.md` “How each one accepts listings” table is in `surfaces.csv` (Official Registry, Glama, PulseMCP, Launch MCP, SarnAI, wellknown.network, mcp.so, Smithery, mcpservers.org, cursor.directory, mcp.directory, mcpcatalog.dev, TrackMCP, MCP Market, MCP Collection, LobeHub, Cline, Docker MCP Catalog, Kilo, toolsdk-mcp-registry, Cursor Marketplace, GitHub MCP Registry, Anthropic Connectors, Raycast, Obot, ToolHive, mcpm.sh, plus the i18n/niche examples and the major awesome lists). **No universe.md table surface was left untouched** (untouched = absent from this ledger). Several are skipped or held, which is a decision, not an omission.

## Stale or contradictory sources

- `tracker.csv` still says `queued-browser` for serveurmcp, ALMC, mcpmarket.cn, MCP Türkiye, and gensapps. Today those four were submitted and gensapps was skipped.
- `ai-distribution-1123.md` / `ai-dist-browser-queue.csv` still list SkillBazaar, ClawHub, AgentForge, SkillzBench as queued, and Continue Hub / Perplexity as browser queue. Superseded the same afternoon.
- `existing_state.csv` Official MCP Registry rows only cover the first-lane sports-odds server plus five later ones. There are **24** live registry servers (README.zh-CN.md + tracker.csv).
- `existing_state.csv` still has Smithery as `waiting-mark`. Smithery ended accounts/CLI/hosting on 31 Oct 2026 (read-only). This ledger: `skipped`.
- MCP Collection: mcp-lists.csv has live listings for sports-odds-mcp and google-ads-transparency-mcp, but tracker.csv records the 13 new submits as `rejected-duplicate` with URL `https://mcpcollection.com/server/vncnt-labs-seo-data` (an unrelated slug). The directory keys on the endpoint and collapses `mcp.apify.com`. Do not resubmit.
- `existing_state.csv` maps `https://pypi.org/project/sports-betting-stats-mcp/` to `server=ats-jobs-mcp`. The URL is the sports-betting package; treat the URL as source of truth.
- `publicrecords-mcp` README “Live tools (Store)” table is stale (six Actors only, and it still says GovCon is not marketed as live). The localized READMEs and the 24-server registry section are current.
- abordage/awesome-mcp: seven of our YAML entries are merged but not all rendered in README.md (generator filters stale). Fix PR #289 is open.
- punkpeye/awesome-mcp-servers already has multiple open PRs from us. The standing rule is no additional PR; amend one of the open ones.
- `fleet-orders/tools/work_clone.sh` is missing on this box.

## Secrets

This ledger contains **no** credential values. Identities are GitHub `GeminiGeorge22`, email `mark-merchand-zs9fmg@mail.grokbot.com`, and vault **ids** only (6000163, 6000563). The publicrecords Apify credential is never written here.

## Regional push (23 Nov 2026, Mark t1159u)

- Added 5 surfaces: 3 filed (yaolifeng0629/Awesome-independent-tools #227, JuneYaooo/awesome-ai-media-skills-cn #8, Eternaldeath/AIProductHome issue #103) and 2 queued browser forms (MCP Shortlist zh-Hant, HostedMCP pt-BR). MCPナビ (ja) and AgentPoint (ru) moved from held-needs-Mark to remaining. They are free forms that need no account.
- Totals are now in `counts.json`: 312 surfaces (59 live, 75 submitted, 6 remaining, 61 held, 111 skipped). The older totals above are the 23 Nov 17:20 ET baseline.
- Localized copy for every Actor in 22 languages: `../localized/`.
