# publicrecords-mcp

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
