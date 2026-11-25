# Tennis Scores API (19th Actor) — distribution, 2026-11-24 19:16 America/Toronto

Verified live with logged-out GET (HTTP 200) of the Store page and `https://api.apify.com/v2/acts/publicrecords~tennis-scores-api`. Latest build **0.1.3**. Pay per event: **$0.002** per match or ranking row (`result-row`) + **$0.00005** per Actor start. `standbyUrl` is null — Standby/MCP is not built, so no MCP endpoint was published or listed.

Input fields (all optional): `mode` (matches|rankings, default matches), `tours` (atp, wta), `date` (YYYY-MM-DD UTC), `tournament`, `player`, `matchTypes`, `status` (all|scheduled|live|finished), `maxResults` (default 50, max 5000). Example input: `{"tournament":"wimbledon","date":"2026-07-12","maxResults":20}`. The Actor was not run.

## Owned surfaces

- [publicrecords-skills](https://github.com/GeminiGeorge22/publicrecords-skills/commit/5cb591fd410cdf0f773ddfffc7a0306c94067385) `5cb591fd` — `tennis-scores` skill calls the Apify API with the user's own token. Not added to the fleet MCP `?tools=` list.
- [publicrecords-automation-recipes](https://github.com/GeminiGeorge22/publicrecords-automation-recipes/commit/a46ad234f568b460eb160f01750fef68d5f57fae) `a46ad234` — recipes plus the example repos index.
- [publicrecords-tennis-scores-api-examples](https://github.com/GeminiGeorge22/publicrecords-tennis-scores-api-examples) `d12ef407` — Python, JS, curl, Colab/Binder notebook. Actions disabled. Author: Public Records.
- This repo: README Actor list, n8n/HTTP templates, Postman collection, OpenAPI spec + index, localized actor catalog. No `servers/` entry, no `mcp.json` tool, no registry publish.
- Hugging Face [Publicrecords/apify-actor-openapi](https://huggingface.co/datasets/Publicrecords/apify-actor-openapi/commit/16be528d704acdcaa298f62228b94f6bd64ce300) `16be528d` — OpenAPI + examples index (no MCP endpoint for tennis).

## Amended open PRs (Apify Actor, no MCP endpoint)

- https://github.com/A-Hemeda/Free-Public-APIs/pull/7
- https://github.com/moose-lab/awesome-sports-ai/pull/42
- https://github.com/firefly-cpp/awesome-computational-intelligence-in-sports/pull/61
- https://github.com/AtomScott/awesome-sports-analytics/pull/10
- https://github.com/n0shake/Public-APIs/pull/880
- https://github.com/ngongcm/public-api-list/pull/42
- https://github.com/public-api-lists/public-api-lists/pull/863
- https://github.com/smew-tech/public-apis/pull/45
- https://github.com/TheNextGenNexus/awesome-apify-actors/pull/4
- https://github.com/FuturizeRush/awesome-apify-skills/pull/2
- https://github.com/itskiranbabu/awesome-public-apis/pull/12
- https://github.com/zieang88888/public-apis-zh/pull/2
- https://github.com/LopezDev7/public-apis-es/pull/10
- https://github.com/FabriCTD/public-apis-es/pull/2
- https://github.com/CharlieJamesGwapo/awesome-apis-for-students/pull/33
- https://github.com/jentic/jentic-public-apis/pull/28414

JacobiusMakes/awesome-sports-betting-data #8 was left unchanged (odds/line APIs only; no sports-scores section).

Store copy, price and Actor code were not changed (Master). No secrets committed. No Skool Actor run. No X or Reddit. No paying.
