# New-Actor coverage 2026-11-25 (21:04–21:20 America/Toronto)

Order: bring `pdf-docx-to-markdown`, `audio-file-transcriber`, `url-to-markdown`, `js-page-to-markdown` and `email-verifier` up to the same coverage as the older portfolio, on every surface where older Actors are live or submitted.

Re-run the same push for Actors going live 11-26/27 with:

```
python3 ledger/push_actor_coverage.py --dry-run <store-slug> [<store-slug> ...]
```

Confirm each Store slug from the live Store page first. Suggested upcoming slugs (confirm when public): `tech-stack-detector`, `dns-lookup`, `crossref`, `phone-validator`, `wikipedia-exchange-rates`, `crypto-wallet`, `gleif-lei-lookup`, `qr-code-generator`, `daily-facts-reference`.

Rules honored this pass: Public Records brand; no new PRs on repos we do not own; no spend; no duplicates (group under existing slugs); `[skip ci]` and no Actions; Email Verifier is always a domain/MX/disposable check, not a mailbox check; no Skool promotion on new listings; raw read-backs, anything unverified labeled **claim**. Every path bills through the user's own Apify account.

## Compact summary (surface group × 5 Actors)

Status: **done** (logged-out read-back URL), **queued** (reachable later, reason), **blocked** (cannot do from the box, reason). All five Actors share the same status in each group unless noted.

| Surface group | pdf | audio | url | js | email |
|---|---|---|---|---|---|
| Official MCP Registry | done | done | done | done | done |
| Glama auto-import | done | done | done | done | done |
| PulseMCP auto-import | queued | queued | queued | queued | queued |
| SarnAI auto-import | queued | queued | queued | queued | queued |
| publicrecords-mcp catalogs, one-click, n8n/Make, OpenAPI, Postman, localized READMEs | done | done | done | done | done |
| Publisher site hubs / how-tos | done | done | done | done | done |
| Hugging Face sample dataset + static Space (existing collection) | done | done | done | done | done |
| publicrecords-skills pack 1.4.0 (Claude Code, Codex, Cursor, Devin, Kiro, Gemini manifests) | done | done | done | done | done |
| ClawHub (new slugs, pending security scans) | queued | queued | queued | queued | queued |
| Sayba slug `public-records-mcp` v2 (no new slug) | done | done | done | done | done |
| Agentel slug `public-records-mcp` (no second slug) | queued | queued | queued | queued | queued |
| Agent networks (edit existing posts only) | queued | queued | queued | queued | queued |
| Open general Public Records PRs on unowned repos | queued | queued | queued | queued | queued |
| Unowned lists with no open PR of ours | blocked | blocked | blocked | blocked | blocked |
| Browser forms, dev.to, Product Hunt and similar | blocked | blocked | blocked | blocked | blocked |
| Per-language README / HF language-section rollups; old standalone MCP repos; Skool-only or single-niche lists | n/a | n/a | n/a | n/a | n/a |

## Done this pass (read-backs)

### Official MCP Registry — live (published 17:24 America/Toronto, still HTTP 200 at 21:07)

Raw JSON, `status=active`, version 1.0.0:

- https://registry.modelcontextprotocol.io/v0.1/servers?search=io.github.GeminiGeorge22/pdf-docx-to-markdown-mcp
- https://registry.modelcontextprotocol.io/v0.1/servers?search=io.github.GeminiGeorge22/audio-file-transcriber-mcp
- https://registry.modelcontextprotocol.io/v0.1/servers?search=io.github.GeminiGeorge22/url-to-markdown-mcp
- https://registry.modelcontextprotocol.io/v0.1/servers?search=io.github.GeminiGeorge22/js-page-to-markdown-mcp
- https://registry.modelcontextprotocol.io/v0.1/servers?search=io.github.GeminiGeorge22/email-verifier-mcp — description: “Check email syntax, domain, MX and disposable domains, not the mailbox. No mail is sent.”

Published from the box with mcp-publisher v1.8.3 and `login github` (existing GeminiGeorge22 token). GitHub Actions was not dispatched.

### Glama — live (auto-import, logged-out HTTP 200 at 21:07 America/Toronto)

- https://glama.ai/mcp/connectors/io.github.GeminiGeorge22/pdf-docx-to-markdown-mcp — “Turn PDF and Word files into clean Markdown, with OCR for scans and RAG-ready chunks.”
- https://glama.ai/mcp/connectors/io.github.GeminiGeorge22/audio-file-transcriber-mcp — “Transcribe audio and video files to text with timestamps, SRT and VTT. Whisper runs inside.”
- https://glama.ai/mcp/connectors/io.github.GeminiGeorge22/url-to-markdown-mcp — “Turn web page URLs into clean, LLM-ready Markdown. Plain HTTP, no browser.”
- https://glama.ai/mcp/connectors/io.github.GeminiGeorge22/js-page-to-markdown-mcp — “Render JavaScript pages in Chromium and get LLM-ready Markdown, with optional screenshots.”
- https://glama.ai/mcp/connectors/io.github.GeminiGeorge22/email-verifier-mcp — “Check email syntax, domain, MX and disposable domains, not the mailbox. No mail is sent.”

Glama claim + glama.json still needs Mark.

### publicrecords-mcp catalogs and publisher site — live (from PRs #53 / #4 earlier today)

Hubs (HTTP 200 after Pages deploy): https://geminigeorge22.github.io/pdf-docx-to-markdown/ , `/audio-file-transcriber/`, `/url-to-markdown/`, `/js-page-to-markdown/`, `/email-verifier/` (title: “Email Verifier — Domain, MX and Disposable Check (not the mailbox)”).

README / one-click table on main: https://github.com/GeminiGeorge22/publicrecords-mcp/blob/5a3ae032e4dd0951d4d0ee9fc66522c1d2e9441d/README.md

### Hugging Face — live (account Publicrecords; unauthenticated GET HTTP 200, `private=false`, Spaces `sdk=static` RUNNING)

Grouped into the existing collection https://huggingface.co/collections/Publicrecords/public-records-open-data-and-actors-6b05ff509ac4723032284a4e

Datasets `Publicrecords/<slug>-sample` and Spaces `Publicrecords/<slug>-explorer` for all five. Email dataset card states it is not a mailbox/SMTP check.

### publicrecords-skills 1.4.0 — live

PR https://github.com/GeminiGeorge22/publicrecords-skills/pull/4 squash-merged 21:11 America/Toronto, SHA `648cd5eafb1c42ba32e1f01eef782de26dda56ce`. `[skip ci]`.

- https://raw.githubusercontent.com/GeminiGeorge22/publicrecords-skills/648cd5eafb1c42ba32e1f01eef782de26dda56ce/skills/email-verifier/SKILL.md (HTTP 200; “not the mailbox”)
- https://raw.githubusercontent.com/GeminiGeorge22/publicrecords-skills/main/README.md (HTTP 200; fifteen skills; email row says “not the mailbox”)
- Skill folders: `pdf-to-text`, `audio-to-text`, `web-page-to-markdown`, `js-page-to-markdown`, `email-verifier`
- Fleet `mcp.json` / plugin / Gemini / Cursor / Devin manifests include the five MCP tools. Existing Skool skill was not removed and was not promoted in new copy.

This also covers the own-repo plugin surfaces that auto-update from that repo: Claude Code marketplace, Codex / ChatGPT repo marketplace, Devin Desktop manifest, Kiro custom power import, Cursor/VS Code install pins in the skills README.

### Sayba — live (existing slug only)

Unauthenticated `GET https://ai.sayba.com/api/v1/marketplace/skills/public-records-mcp` HTTP 200 at 17:26 America/Toronto, version 2, `pricing_type=free`, `status=active`, publisher Public Records. Description and prompt name all five Actors; Email Verifier is a domain/MX/disposable check, not the mailbox. Skool excluded; tennis API-only. No new slug.

## Queued (reason)

- **PulseMCP:** Registry publish is done. Logged-out sitemap and HTML search at 21:07 had no `GeminiGeorge22` / `email-verifier-mcp` listing (the homepage query string is not a listing). Recheck later. Submissions remain paused; do not file a duplicate form.
- **SarnAI:** Logged-out `listings?q=io.github.GeminiGeorge22` had zero hits at 21:07. A search for `email-verifier-mcp` only showed other publishers. Recheck later. No second submit.
- **ClawHub:** Five slugs published as `@geminigeorge22` 1.0.0 after a dry-run, pending security scans (CLI wording). Logged-out pages exist but do not yet show the full skill title/description (unlike the older live skills). Treat as submitted until a later read-back shows the real card.
  - https://clawhub.ai/geminigeorge22/skills/publicrecords-pdf-to-text
  - https://clawhub.ai/geminigeorge22/skills/publicrecords-audio-to-text
  - https://clawhub.ai/geminigeorge22/skills/publicrecords-web-page-to-markdown
  - https://clawhub.ai/geminigeorge22/skills/publicrecords-js-page-to-markdown
  - https://clawhub.ai/geminigeorge22/skills/publicrecords-email-verifier
- **Agentel:** Do not open a second slug. After Skill Drop approval, file a new version of `public-records-mcp` grouping all five, with the Email copy constraint.
- **Auto-import after the skills repo merge:** SkillsMP, skills.sh, Gemini CLI extension gallery, Socketlist. Recheck logged-out tomorrow.
- **Agent networks** (keys in `/home/box/apify-marketer/agent-networks/`). Existing how-tos went up earlier today. Site rules say do not publish a second listing. This pass did not edit those posts in place. A later pass should update the existing threads (not a new post), still excluding Skool and hidden-instruction sites (1VR already skipped). Current posts:
  - The Colony: https://thecolony.ai/posts/6ddb0461-f209-44e4-b7f8-e6becb63824c
  - Forum for Agents: https://forumforagents.com/t/z3p42rnj#p-imdfeiut5
  - Agentboard.ai: https://www.agentboard.ai/t/thr_72179b78cc42ff8c
  - Board for Agents: https://boardforagents.com/api/posts/8b1688d233
  - Agent Socials: https://socialnetworkforaiagents.com/c/offers/p_0mwwh9aw2bs6p2n29
  - ZZBoard: https://zzboard.net/t/149
  - Pluribotica: https://pluribotica.com/p/72f4f2c9-c1e7-4516-ac44-b67b771e13f3
  - SwarmMemo: https://swarmmemo.com/e/ec56afd88d697aa7f7dfb1019f82a912?format=json
  - Agents Gather: https://agentsgather.org/threads/1008
  - The Agent Commons: https://ai.affix-io.com/conversation/193/#m193
  - Swarm Bar: https://swarmbar.com/p/c252502f-9044-4fa0-b112-26b58be50be1
  - Clawprint: https://clawprint.org/p/how-to-pin-official-records-actors-on-apify-mcp
- **Open general Public Records PRs** on unowned repos: allowed to amend, not done in this pass to avoid a 100+ PR push in one hour and to stay off Skool-titled or single-niche PRs. Next run should amend only still-open PRs titled as a Public Records pack/skills/MCP collection (examples still open at 21:10: open-agent-craft/awesome-agent-skills#50, LMPrado-DZ23/awesome-agent-plugins#22, xai-org/plugin-marketplace#2237, FuturizeRush/awesome-apify-skills#2, CognitionAI/devin-marketplace#258). Do not amend “Add Skool Community Scraper …” PRs. Do not open a new PR.
- **Launching Next** submission 187146: amend that one listing; no second submit; no Fast-Track spend.

## Blocked

### blocked: no new PR on an unowned repo

Awesome-lists and third-party catalogs where older Actors are live or were submitted via a PR that is already merged or closed, and we have no open PR to amend. Standing rule: no new PRs on repos we do not own. These stay not-listed for the five Actors unless a later amend of a still-open general pack PR covers them.

### blocked:browser

Do not file these from the box. One Public Records pack / skills-repo entry is enough where the surface allows grouping. Contact: `mark-merchand-zs9fmg@mail.grokbot.com`. Pricing field: pay-per-use on the user's own Apify account; current rates on the Store page. Email Verifier description must use the domain/MX/disposable wording, not “mailbox verifier.” Do not file a second listing if a Public Records entry already exists.

**Standard fields** (use unless a row names different ones):

- Name / title: the Store title, or “Public Records MCP” for a pack launch
- Author / publisher: Public Records
- Store URL: `https://apify.com/publicrecords/<slug>`
- MCP endpoint: `https://mcp.apify.com?tools=publicrecords/<slug>`
- Registry: `https://registry.modelcontextprotocol.io/v0.1/servers?search=io.github.GeminiGeorge22/<slug>-mcp`
- Skills pack: `https://github.com/GeminiGeorge22/publicrecords-skills`
- Skill folder: `https://github.com/GeminiGeorge22/publicrecords-skills/tree/main/skills/<folder>`
- Description: from the live Store README
- Contact: `mark-merchand-zs9fmg@mail.grokbot.com`
- Disclosure: published by the publicrecords maintainer on Apify Store

| Surface | URL | Extra / exact fields |
|---|---|---|
| dev.to (signed out) | https://dev.to/new | Title; body (pack how-to, disclosure, no Skool); tags e.g. mcp, apify, pdf (or audio, markdown, email); canonical Store / hub URLs. Sign in first. Do not publish five separate posts if one pack article covers them. |
| Product Hunt | https://www.producthunt.com/posts/new | Launch name “Public Records MCP” (one launch, not five); tagline; description; maker; links: Store, MCP, skills repo, publisher site; first-comment with the five Actor links and Email wording. No paid boost. |
| Hacker News Show HN | https://news.ycombinator.com/submit | Title “Show HN: …”; URL (hub or skills repo); text with disclosure and the five Store links. One post, not five. |
| Medium | https://medium.com/ | Sign-in; title; body; tags; canonical link. Pack article, not five posts. |
| Hashnode | https://hashnode.com/onboard | Sign-in / onboard; title; body; tags. |
| Indie Hackers products | https://www.indiehackers.com/products/new | Product name, URL, short description, maker. |
| SkillBazaar | https://skillbazaar.ai/dashboard/new | Sign-in GitHub GeminiGeorge22; paste `https://github.com/GeminiGeorge22/publicrecords-skills/tree/main/skills/<folder>` for each new folder (or the pack URL if one field). |
| Cursor Marketplace | https://cursor.com/marketplace | Plugin / MCP listing; skills-repo or mcp.json URL; description. |
| MCP Market | https://mcpmarket.com/submit | Name, endpoint or repo, description, contact. Check auto-import first. |
| TrackMCP | https://trackmcp.com/submit-mcp | Same standard fields; one per dedicated or bundle server; check auto-import first. |
| mcp.directory | https://mcp.directory/submit | Same; check auto-import first. |
| mcpcatalog.dev | https://mcpcatalog.dev/submit | Same; check auto-import first. |
| mcpservers.org | https://mcpservers.org/submit | Same; check auto-import first. |
| AllMCPs | https://allmcps.com | Dedicated server form; confirm the email link. |
| ClaudePluginHub | https://www.claudepluginhub.com/tools/submit-plugin | GitHub sign-in; plugin / skills-repo URL. |
| AgentForge | https://agentforge.community/en/submit | Skills-repo or registry URL; no second entry for the same endpoint. |
| AIエージェントナビ | https://aiagent-navi.com/listing/ | Standard fields. |
| API Tracker (Apideck) | https://apitracker.io/submit | Standard fields. |
| AgentNDX | https://agentndx.ai/submit | Standard fields. |
| CuratedMCP | https://www.curatedmcp.com/publish | Standard fields. |
| EvolvingHR | https://evolvinghr.ai/contribute | Standard fields. |
| GovConSaaS | https://www.govconsaas.com/add-your-saas | Standard fields (civic Actors are the fit; do not force Email/PDF if the form is GovCon-only). |
| MCP Harbor | https://mcpharbor.app/submit/ | Standard fields; do not re-file already submitted endpoints. |
| MCP Hunter | https://mcp-hunter.com/submit | Same. |
| MCP Pub | https://mcp.pub/submit/ | Standard fields. |
| MCP Server Hub | https://mcpserverhub.net/submit | Standard fields. |
| MCP Server Hub .com | https://mcpserverhub.com/submit | Standard fields. |
| MCP Trove | https://mcptrove.com/submit | Standard fields. |
| MCPExplorer | https://mcpexplorer.com/submit | One listing per URL; a pack/repo URL may already be in review — do not file a second. |
| MCPHub (mcphub.space) | https://mcphub.space/submit | Standard fields. |
| MCPstack | https://www.mcpstack.dev/submit | Standard fields. |
| Swarmnest | https://swarmnest.ai/submit/ | Standard fields. |
| ToolSkipper | https://toolskipper.com/submit | Sign-in; do not re-file already submitted Actors. |
| AgenticSkills | https://agenticskills.io/submit?type=mcp | type=mcp; standard fields; wait out any rate-limit. |
| SkillFoxx (ru) | https://skillfoxx.ru/submit | One listing per repo; do not re-file a repo already rejected as a duplicate. |
| SkillzBench | https://skillzbench.com/submit | Skills-repo or folder URL. |
| MCP Markets | https://mcpmarkets.com/ko/submit | Locale submit; standard fields. |
| MCPBay (ru) | https://mcpbay.pro/submit.html | Standard fields. |
| MCPVault (zh) | https://mcpvault.io/zh/docs/submitting | Follow their docs fields. |
| MCP市场 mcpmarket.cn | https://mcpmarket.cn/submit | Standard fields. |
| cursor.directory | https://cursor.directory | Check auto-import of mcp.json first; form only if missing. |
| PlugMCP | https://plugmcp.ai/mcp/submit | Prefer Official Registry auto-ingest; form only if still missing after 6h. |
| gate (gateturbo.com) | https://gateturbo.com/submit | Endpoint; scan; email reply. |
| wellknown.network | https://wellknown.network | Check registry ingest first; form if still missing. |
| serveurmcp.com | https://serveurmcp.com/ajouter-mon-serveur-mcp/ | Add to the existing bundle listing if one exists; otherwise standard fields. |
| MCP Türkiye | https://mcpturkiye.com/ | Same: add to the existing bundle if present. |
| BusinessMCP | https://businessmcp.com/mcp-servers/submit | Standard fields; retry only after any submission-limit window. |
| Arch Tools MCP Marketplace | https://archtools.dev/mcp-marketplace#submit | Already submitted pack — do not re-file. |
| Altimateguide | https://altimateguide.com/for-agents | One pending submission per domain; do not use the paid listing. Wait until the in-review submission is decided. |
| Not Human Search | https://nothumansearch.ai/submit | Domain-level submission already filed; do not file a second. |
| ProMCP | https://www.promcpservers.com/submit | API also exists (`POST /api/submissions`: title, description, category, repoUrl, submitterName, submitterEmail; website honeypot empty). Do not open a second batch while the first is in review. |
| Kilo marketplace | https://github.com/Kilo-Org/kilo-marketplace | Form/PR on their repo — only amend an existing open PR of ours; no new PR. |
| github/awesome-copilot | https://github.com/github/awesome-copilot | Same: amend an open PR if we have one; no new PR. |
| Launching Next | https://www.launchingnext.com/submit/ | Amend submission 187146 only; math-check form; no Fast-Track spend. |
| Qiita / Zenn / velog / Juejin / SegmentFault / Habr / TabNews / note.com / Tistory / Viblo / Codepolitan | see `remaining_names` in counts.json | Sign-in article drafts; pack how-to; disclosure; no Skool. |
| ShopStack AI | mailto:hello@getshopstack.com?subject=Tool%20submission | Email body with standard fields (Etsy-fit Actors only). |
| APISports.net | https://www.apisports.net/submit | Contact form already filed (claim). Do not file a second. Sports-fit only. |

mcp.so remains skipped (paid listing declined). Kaggle remains held for Mark (phone gate). MCP Collection is skip-unless-non-Apify-endpoint (directory collapses `mcp.apify.com`).

### n/a (not a distinct listing for these Actors)

- Per-language `README.<lang>.md` files and HF dataset language sections already rolled up in the 17:28 count correction.
- Old standalone repos (`etsy-sales-mcp`, `sports-odds-mcp`, `ats-jobs-mcp`, …) and `us-public-data-snapshots` / civic-only datasets.
- Skool-only lists and PRs (no Skool on new listings).
- Single-niche lists (soccer, Spotify-stats, etc.) where adding PDF-to-Markdown or Email Verifier would be off-topic.

## Placement updates in this PR

For the five Actors: Glama `submitted` → `live`; Sayba `remaining` → `live`; publicrecords-skills, Claude Code / Codex / Devin / Kiro / one-click pins → `live`; ClawHub → `submitted` (pending scans). Official Registry, HF, publisher site, and mcp catalogs were already `live`. PulseMCP, SarnAI, and Agentel stay `submitted`.

## PRs this follow-up

- Skills pack: https://github.com/GeminiGeorge22/publicrecords-skills/pull/4 — SHA `648cd5eafb1c42ba32e1f01eef782de26dda56ce` (21:11 America/Toronto)
- This ledger PR: [skip ci] squash on publicrecords-mcp (this file + `ledger/push_actor_coverage.py` + placement updates)
