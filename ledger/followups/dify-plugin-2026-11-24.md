# Dify plugin + remaining agent-marketplace pass, 2026-11-24 (America/Toronto)

Mark t1199u: work harder, faster and more efficiently. No paying, no X or Reddit, author Public Records, `[skip ci]`, Actions kept off, no secrets, community-growth tracker kept off new filings.

## Dify tool plugin (done)

- Source repo (live): https://github.com/GeminiGeorge22/publicrecords-dify-plugin — default branch `main`, Actions disabled, MIT. GitHub Release [v0.0.1](https://github.com/GeminiGeorge22/publicrecords-dify-plugin/releases/tag/v0.0.1) attaches `publicrecords-0.0.1.difypkg`.
- Marketplace PR (submitted): https://github.com/langgenius/dify-plugins/pull/3942 — path `publicrecords/publicrecords/publicrecords-0.0.1.difypkg`, official template completed. Fork: `GeminiGeorge22/dify-plugins` branch `add-publicrecords-0.0.1`.
- Credential model: end user's own Apify API token (`secret-input` `apify_api_token`). No shared or built-in token. Runs bill the user's Apify account. Validation is `GET https://api.apify.com/v2/users/me`.
- Tools: `list_actors`, `run_actor`, `get_dataset_items`. Allowlist is 18 Actors including tennis-scores-api. The community-growth tracker is not in the allowlist or the package.
- Packaged with official CLI `dify-plugin-daemon` v0.6.15. Plugin checksum `7f3ad8c80c0869ce5c36a57f5082e8bb7000d507e0fbb70897100d5df1d7ae57`. Limitation disclosed in the PR: not installed on Dify Cloud or Community Edition in this pass.
- Author namespace `publicrecords`, display name Public Records, contact mark-merchand-zs9fmg@mail.grokbot.com.

This closes the remaining ledger surface `Dify Marketplace (plugin)` (previously queued as an AMFM-4 creative play). A new live surface `Dify plugin source (own repo)` records the source and release.

The older skipped surface `Dify / Coze / Flowise / Langflow` (parked under MEMO-1g §5 as form-based work) was left skipped. This PR path is only for the Dify Marketplace plugin.

## Other named agent/plugin lists checked (no new third-party PR)

Ledger and contribution rules were checked first so nothing already live, submitted, held, or skipped was re-filed.

- LobeHub MCP is already live (`lobehub.com/mcp/geminigeorge22-publicrecords-skills`). Do not file a second MCP entry.
- `lobehub/lobe-chat-plugins` accepts PRs, but only for a functioning LobeChat Function-Calling plugin (hosted OpenAPI plugin). We do not have a hosted LobeChat plugin server, so no PR this pass.
- Cherry Studio (`CherryHQ/mcpmarket`) stays skipped (requires an npm package under the `@mcpmarket` scope).
- LibreChat stays skipped with the connect-only clients surface (no catalog to submit to; setup rows already ship in server READMEs).
- Chatbox (`chatboxai/chatbox`) has no plugin marketplace or community index to PR.
- Open WebUI Community tools are shared via openwebui.com (browser form / share flow), not a GitHub PR. Official `open-webui/open-webui` does not accept unsolicited code PRs.
- Combined `Dify / Coze / Flowise / Langflow` form path stays skipped (MEMO-1g §5). Coze / Poe remain remaining browser forms.
- Official LangChain / LlamaIndex / CrewAI (and Make / Zapier / Pipedream) integrations stay skipped (Apify already runs any Actor). `crewAIInc/awesome-crewai` stays skipped; `zinyando/awesome-crewai#15` is already submitted.
- Haystack, LlamaHub, Semantic Kernel, and AutoGen: no existing ledger row, and no official community list was filed because we do not yet have a real Haystack / LlamaHub / Semantic Kernel / AutoGen integration package to point at. `geffzhang/awesome-semantickernel` welcomes PRs only for Semantic Kernel tools or projects.

No secrets were committed. Actions were left off on our repos.
