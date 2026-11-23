# Distribution ledger

Snapshot of every distribution surface the publicrecords Apify Actor fleet touches, plus a playbook to launch a new Actor across them.

**As of:** 2026-11-23 13:22 America/Toronto

| File | What |
|---|---|
| [surfaces.csv](./surfaces.csv) | One row per surface |
| [placements.csv](./placements.csv) | Surface × 17 Actors |
| [actor_map.csv](./actor_map.csv) | Dedicated server, bundles, skill folder per Actor |
| [LAUNCH.md](./LAUNCH.md) | Ordered playbook |
| [launch_new_actor.sh](./launch_new_actor.sh) | Dry-run planner (`./launch_new_actor.sh <actor-slug>`) |
| [counts.json](./counts.json) | The counts below, machine-readable |

## Counts

Source of the totals: this folder’s `surfaces.csv` / `counts.json`, built on 23 Nov 2026 from the files listed under Sources.

| Bucket | N | Meaning |
|---|---:|---|
| Total surfaces in the ledger | **307** | Unique surfaces after collapsing MCP-LIST-1 per-server rows |
| Live | **59** | Listed, shipped, or merged and visible |
| Submitted / pending | **72** | Form/API/PR/auto-import in flight, not confirmed live |
| Remaining to file (new surfaces) | **2** | Grok Bot marketplace (xAI), HOL plugin registry claim |
| Held, needs Mark (default skip) | **63** | Account, identity, or paid/business decision |
| Skipped / n-a / defunct | **111** | Out of scope, declined, blocked, or dead |
| Touched (live + submitted + remaining) | **133** | Surfaces we listed, filed, or can still file without Mark |
| Checksum | 307 | Must equal total |

`placements.csv` has **5219** rows (307 surfaces × 17 Actors). Placement status `not-listed` means the surface is active for other Actors but this Actor has no row yet — follow `how_new_actor_added` (and batch into an open PR if one exists).

By type (from `counts.json` `by_type`): awesome-list 138, mcp-directory 115, plugin-marketplace 18, skills-marketplace 14, other 12, registry 9, article 1.

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
