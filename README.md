# publicrecords-mcp

**Languages:** [zh-CN](./README.zh-CN.md) · [ja](./README.ja.md) · [ko](./README.ko.md) · [de](./README.de.md) · [fr](./README.fr.md) · [es](./README.es.md) · [pt-BR](./README.pt-BR.md) · [it](./README.it.md) · [ru](./README.ru.md) · [tr](./README.tr.md) · [id](./README.id.md) · [vi](./README.vi.md) · [ar](./README.ar.md) · [hi](./README.hi.md) (localized index of all 24 registry servers; English text applies if they differ)

**Manifest-only** pin package for [publicrecords](https://apify.com/publicrecords) Apify Actors on [Apify MCP](https://mcp.apify.com).

> This repo contains **JSON tool descriptors and MCP server cards only** — no Actor source, Dockerfiles, truth sets, or tokens.
>
> **Disclosure:** Published by the publicrecords maintainer on Apify.

## One-paste MCP pin (all live Actors)

```
https://mcp.apify.com?tools=publicrecords/company-social-profile-finder,publicrecords/eu-ted-notices-scraper,publicrecords/usaspending-awards-scraper,publicrecords/grants-gov-scraper,publicrecords/uk-find-a-tender-scraper,publicrecords/legistar-meetings-scraper
```

Crosswalk (`company-social-profile-finder`) is the **flagship** — put it first in agent tool lists.

## Install in Cursor / Claude Desktop

Copy `mcp-server.json` into your client MCP config (or merge the `mcpServers.publicrecords` block). Auth with your Apify account when the client prompts.

See also:

- Landing: https://geminigeorge22.github.io/mcp/?utm_source=github&utm_medium=readme&utm_campaign=mcp-manifest
- For agents (RAG routing): https://geminigeorge22.github.io/for-agents/
- Well-known card: https://geminigeorge22.github.io/.well-known/mcp/server-card.json
- Prompt pack: https://geminigeorge22.github.io/agents/prompt-pack.json
- Dialects: https://geminigeorge22.github.io/agents/dialects/

## Live tools (Store)

| Brand | Actor ID | Store |
|---|---|---|
| **Crosswalk** (flagship) | `publicrecords/company-social-profile-finder` | [Store](https://apify.com/publicrecords/company-social-profile-finder) |
| EU TED Notices | `publicrecords/eu-ted-notices-scraper` | [Store](https://apify.com/publicrecords/eu-ted-notices-scraper) |
| USASpending Awards | `publicrecords/usaspending-awards-scraper` | [Store](https://apify.com/publicrecords/usaspending-awards-scraper) |
| Grants.gov | `publicrecords/grants-gov-scraper` | [Store](https://apify.com/publicrecords/grants-gov-scraper) |
| UK Find a Tender | `publicrecords/uk-find-a-tender-scraper` | [Store](https://apify.com/publicrecords/uk-find-a-tender-scraper) |
| Legistar Meetings | `publicrecords/legistar-meetings-scraper` | [Store](https://apify.com/publicrecords/legistar-meetings-scraper) |

Thin descriptors live under [`tools/`](./tools/). Dialects under [`dialects/`](./dialects/).

## What this is not

- Not Actor implementation code
- Not a paid run cache / digest seed
- GovCon Opportunity Feed is **not** marketed as live here

## License

MIT — applies to these manifests and descriptors only.


## One MCP server per Actor (MCP Registry)

Each folder under [`servers/`](./servers/) is a remote-only MCP Registry entry (`io.github.GeminiGeorge22/<name>`) for one Actor, served by Apify's hosted MCP gateway. Published by [`.github/workflows/publish-mcp-servers.yml`](./.github/workflows/publish-mcp-servers.yml). Actors that already have their own server repo: [sports-odds-mcp](https://github.com/GeminiGeorge22/sports-odds-mcp), [spotify-play-count-mcp](https://github.com/GeminiGeorge22/spotify-play-count-mcp), [google-ads-transparency-mcp](https://github.com/GeminiGeorge22/google-ads-transparency-mcp), [company-social-mcp](https://github.com/GeminiGeorge22/company-social-mcp).

| Server | Actor | Endpoint |
|---|---|---|
| [`ashby-jobs-mcp`](./servers/ashby-jobs-mcp/) | [`publicrecords/ashby-jobs-scraper`](https://apify.com/publicrecords/ashby-jobs-scraper) | `https://mcp.apify.com?tools=publicrecords/ashby-jobs-scraper` |
| [`greenhouse-jobs-mcp`](./servers/greenhouse-jobs-mcp/) | [`publicrecords/greenhouse-jobs-scraper`](https://apify.com/publicrecords/greenhouse-jobs-scraper) | `https://mcp.apify.com?tools=publicrecords/greenhouse-jobs-scraper` |
| [`lever-jobs-mcp`](./servers/lever-jobs-mcp/) | [`publicrecords/lever-jobs-scraper`](https://apify.com/publicrecords/lever-jobs-scraper) | `https://mcp.apify.com?tools=publicrecords/lever-jobs-scraper` |
| [`smartrecruiters-jobs-mcp`](./servers/smartrecruiters-jobs-mcp/) | [`publicrecords/smartrecruiters-jobs-scraper`](https://apify.com/publicrecords/smartrecruiters-jobs-scraper) | `https://mcp.apify.com?tools=publicrecords/smartrecruiters-jobs-scraper` |
| [`etsy-search-mcp`](./servers/etsy-search-mcp/) | [`publicrecords/etsy-search-scraper`](https://apify.com/publicrecords/etsy-search-scraper) | `https://mcp.apify.com?tools=publicrecords/etsy-search-scraper` |
| [`etsy-shop-sales-mcp`](./servers/etsy-shop-sales-mcp/) | [`publicrecords/etsy-shop-velocity`](https://apify.com/publicrecords/etsy-shop-velocity) | `https://mcp.apify.com?tools=publicrecords/etsy-shop-velocity` |
| [`calibration-ledger-mcp`](./servers/calibration-ledger-mcp/) | [`publicrecords/calibration-ledger`](https://apify.com/publicrecords/calibration-ledger) | `https://mcp.apify.com?tools=publicrecords/calibration-ledger` |
| [`govcon-opportunities-mcp`](./servers/govcon-opportunities-mcp/) | [`publicrecords/govcon-opportunity-feed`](https://apify.com/publicrecords/govcon-opportunity-feed) | `https://mcp.apify.com?tools=publicrecords/govcon-opportunity-feed` |
| [`grants-gov-mcp`](./servers/grants-gov-mcp/) | [`publicrecords/grants-gov-scraper`](https://apify.com/publicrecords/grants-gov-scraper) | `https://mcp.apify.com?tools=publicrecords/grants-gov-scraper` |
| [`usaspending-awards-mcp`](./servers/usaspending-awards-mcp/) | [`publicrecords/usaspending-awards-scraper`](https://apify.com/publicrecords/usaspending-awards-scraper) | `https://mcp.apify.com?tools=publicrecords/usaspending-awards-scraper` |
| [`uk-tenders-mcp`](./servers/uk-tenders-mcp/) | [`publicrecords/uk-find-a-tender-scraper`](https://apify.com/publicrecords/uk-find-a-tender-scraper) | `https://mcp.apify.com?tools=publicrecords/uk-find-a-tender-scraper` |
| [`eu-ted-tenders-mcp`](./servers/eu-ted-tenders-mcp/) | [`publicrecords/eu-ted-notices-scraper`](https://apify.com/publicrecords/eu-ted-notices-scraper) | `https://mcp.apify.com?tools=publicrecords/eu-ted-notices-scraper` |
| [`legistar-council-meetings-mcp`](./servers/legistar-council-meetings-mcp/) | [`publicrecords/legistar-meetings-scraper`](https://apify.com/publicrecords/legistar-meetings-scraper) | `https://mcp.apify.com?tools=publicrecords/legistar-meetings-scraper` |
