# Five newest public Actors — catalog add (2026-11-27)

Adds the five newest public Store Actors to catalogs, templates, and the ledger. Identity: Public Records (`GeminiGeorge22`). No listed Actor was run. `[skip ci]` on this repo (no Actions funding).

Actors:
- `tech-stack-detector` — Tech Stack Detector MCP: Website Technology Lookup — https://apify.com/publicrecords/tech-stack-detector — MCP `https://mcp.apify.com?tools=publicrecords/tech-stack-detector` — skill `website-tech-stack`
- `phone-number-validator` — Phone Number Validator MCP: E.164, Country & Line Type — https://apify.com/publicrecords/phone-number-validator — MCP `https://mcp.apify.com?tools=publicrecords/phone-number-validator` — skill `phone-number-validator`
- `wikipedia-search` — Wikipedia Search MCP: Articles, ECB FX & Treasury Yields — https://apify.com/publicrecords/wikipedia-search — MCP `https://mcp.apify.com?tools=publicrecords/wikipedia-search` — skill `wikipedia-search`
- `crossref-papers-doi-lookup` — Academic Paper Search MCP: Crossref Citations & DOI Lookup — https://apify.com/publicrecords/crossref-papers-doi-lookup — MCP `https://mcp.apify.com?tools=publicrecords/crossref-papers-doi-lookup` — skill `academic-papers-doi`
- `dns-lookup` — DNS Lookup MCP: Bulk DNS, MX, SPF and DMARC — https://apify.com/publicrecords/dns-lookup — MCP `https://mcp.apify.com?tools=publicrecords/dns-lookup` — skill `dns-lookup`

Notes:
- `phone-number-validator` is described as E.164 / country / line-type validation, **not** a live carrier lookup.
- Official MCP Registry CLI publish is still needed after merge (same pattern as #54); this PR is `[skip ci]` and does not dispatch `publish-mcp-servers.yml`.
- ClawHub publish of the five skills is handled from `publicrecords-skills` after that PR lands, logged in as GeminiGeorge22.
- Placement rows were seeded from the `url-to-markdown` surface matrix: `skipped` and `held-needs-Mark` are copied; previous live/submitted rows are recorded as `not-listed` until a coverage pass confirms them.
