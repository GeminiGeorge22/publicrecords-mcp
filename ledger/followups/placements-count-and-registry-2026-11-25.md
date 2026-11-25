# Follow-up 2026-11-25 America/Toronto: Official Registry CLI publish, count correction, Sayba edit

Author: Public Records. No GitHub Actions were dispatched. No secrets in this file.

## 1. Official MCP Registry (mcp-publisher on the box)

The workflow `.github/workflows/publish-mcp-servers.yml` installs mcp-publisher v1.8.3, validates every `servers/*/server.json`, logs in with `github-oidc`, and publishes, skipping duplicate versions. GitHub Actions OIDC cannot run on the box, and Mark's rule is not to dispatch the workflow.

Local equivalent, using the same binary version, the same `server.json` files, and the same namespace `io.github.GeminiGeorge22`:

1. Installed mcp-publisher v1.8.3 from the same GitHub release URL the workflow uses.
2. Logged in with the documented CLI method `mcp-publisher login github -token` and the box's existing GeminiGeorge22 `GITHUB_TOKEN` (not OIDC, not a new secret from Mark).
3. Validated all 23 `server.json` files, then published. Existing versions were skipped as duplicates. All five new servers published at 17:24 America/Toronto.

Raw JSON read-backs (HTTP 200, `status=active`, version 1.0.0):

- https://registry.modelcontextprotocol.io/v0.1/servers?search=io.github.GeminiGeorge22/pdf-docx-to-markdown-mcp — published 17:24 America/Toronto (2026-11-25T22:24:22Z). Description: “Turn PDF and Word files into clean Markdown, with OCR for scans and RAG-ready chunks.”
- https://registry.modelcontextprotocol.io/v0.1/servers?search=io.github.GeminiGeorge22/audio-file-transcriber-mcp — 17:24 (2026-11-25T22:24:20Z). “Transcribe audio and video files to text with timestamps, SRT and VTT. Whisper runs inside.”
- https://registry.modelcontextprotocol.io/v0.1/servers?search=io.github.GeminiGeorge22/url-to-markdown-mcp — 17:24 (2026-11-25T22:24:23Z). “Turn web page URLs into clean, LLM-ready Markdown. Plain HTTP, no browser.”
- https://registry.modelcontextprotocol.io/v0.1/servers?search=io.github.GeminiGeorge22/js-page-to-markdown-mcp — 17:24 (2026-11-25T22:24:22Z). “Render JavaScript pages in Chromium and get LLM-ready Markdown, with optional screenshots.”
- https://registry.modelcontextprotocol.io/v0.1/servers?search=io.github.GeminiGeorge22/email-verifier-mcp — 17:24 (2026-11-25T22:24:20Z). “Check email syntax, domain, MX and disposable domains, not the mailbox. No mail is sent.”

Directory auto-import immediately after publish (logged-out):

- Glama: control listing https://glama.ai/mcp/connectors/io.github.GeminiGeorge22/sports-odds-api is HTTP 200. All five new connector URLs returned HTTP 404 “MCP connector not found.”
- PulseMCP: search pages only echoed the query string; no `GeminiGeorge22` / `publicrecords` listing in the HTML.
- SarnAI: `listings?q=email-verifier-mcp` returned other publishers' email-verifier listings, not `io.github.GeminiGeorge22`.

Those three stay `submitted` pending their auto-import. Glama claim + glama.json still needs Mark.

## 2. Why “23,309 rows” was not a listings count, and the fix

`placements.csv` is a surface×actor matrix. 23,309 was the row count: 19 older Actors × 971 surfaces + 5 new Actors × 972 surfaces, including `not-listed`, skipped, and file-level rows. That is not 23,309 live listings. The earlier headline (972 surfaces, 304 live) was also inflated because 140 of those live surfaces were per-language `README.<lang>.md` files that already had rollup surfaces, and 3 more were n8n/Make/Postman recipe files in the same `publicrecords-mcp` repo (not listings on those products' galleries).

Correction, recorded in `counts.json` (`counting_rule`, `correction_reason`, `before_correction_2026_11_25`), at 17:28 America/Toronto:

| | Before | After |
|---|---:|---:|
| Distinct surfaces | 972 | 829 |
| Live (distinct surfaces) | 304 | 161 |
| Submitted / remaining / held / skipped | 367 / 58 / 31 / 212 | unchanged |
| Placement matrix rows | 23,309 | 19,877 |
| Placement rows with status=live | 1,741 | 1,285 |

Headline live is 161 distinct surfaces. The five Official MCP Registry placements moved from submitted to live after the CLI publish (that does not add a new surface; Official MCP Registry was already live).

## 3. Sayba

Edited the existing free slug `public-records-mcp` only (no new slug). Stored Public Records key at the private box creds path authenticated as identity `sa_mwwg8p1bbac2e1df3d7b`. Documented `PATCH /api/v1/marketplace/skills/:slug` returned HTTP 200, version 2, still `pricing_type=free`, `status=active`.

Unauthenticated read-back `GET https://ai.sayba.com/api/v1/marketplace/skills/public-records-mcp` HTTP 200 at 17:26 America/Toronto (updated_at 2026-11-25T22:26:40Z). Description and prompt name all five new Actors. Email Verifier is a domain/MX/disposable check, not the mailbox. Skool stays excluded; tennis stays API-only.
