# End-user paths — research and filings, 2026-11-25 16:15 America/Toronto

Same standing rules. Brand: Public Records. No X, Reddit, Skool, paid placements, or new PRs on repos we do not own. Store listing copy changed only via PAGE-1 step-a PUT (Marketer path, proven 2026-11-25 on company-social-profile-finder). SEO-K1-1 seoDescription remains Master's historical queue row; today's PAGE-1 writes used the same four listing fields (title, description, seoTitle, seoDescription) with read-back.

## A) Ranked path table

Store search was measured 2026-11-25 ~16:00 America/Toronto via `GET https://api.apify.com/v2/store?search=…&limit=100`. Apify does not publish query volume; reach is estimated from competing Actors in the first 100 and users30 of the #1 result. Our users30 baseline (15:45 ET): Etsy Search 16, Sports Odds 2, Spotify 0; fleet users30 27 / users7 16.

| Path | Evidence (25 Nov 2026) | Est. reach | Fit | Status |
|---|---|---|---|---|
| Apify Store search (head buyer queries) | "etsy scraper" 100 hits, #1 users30 196–242; ours **#37**. "etsy search scraper" 100 hits, #1 devcake 194; **ours not in first 100** (title had dropped "Search"). "sports odds" 100 hits, #1 users30 30–79; **ours not in first 100**; "odds api" ours **#37**; "sports betting odds" ours **#80**. "spotify play count scraper" 100 hits, #1 beatanalytics users30 199; **ours not in first 100** (users30 0). | High (in-Store buyers already converting for rivals) | Highest — this is where paid users already are | **PAGE-1 applied** (API read-back below). Etsy Store HTML `<title>` still showed the old seoTitle at 16:09 ET (CDN lag); Sports and Spotify HTML titles already matched. Recheck Store rank after index. |
| n8n community templates + official Apify node | n8n.io/workflows title: **14,388** community workflows (live page, 25 Nov 2026). Official `@apify/n8n-nodes-apify` node. Our 19 n8n JSON files already lived in publicrecords-mcp/templates/n8n (including Etsy, Sports, Spotify). Site integrations had only gov/Crosswalk files. | High among automation buyers | High | **Acted:** copied Etsy/Sports/Spotify n8n JSON onto the publisher site; left official n8n Creator gallery at the existing one-template (grants digest) wait. |
| Make templates + official Apify app | Make help: public templates cover **over 7,500** use cases. Official Apify Make modules (Run an Actor, Get Dataset Items). Official gallery needs partner/account. Ledger "Make (template share link)" still remaining (browser/captcha). | High among ops buyers | High | **Acted in our repo:** `templates/make/` HTTP recipes for Etsy Search, Velocity, Sports Odds, Spotify. Official gallery / share links not filed. |
| Zapier Apify app / templates | Official Apify Zapier integration exists (page HTTP 200). No public template count. | Medium | Medium | HTTP recipe already documented in templates/README.md. No Zapier gallery filing (account gate). |
| Publisher site how-tos (geminigeorge22.github.io) | Etsy hubs and blogs already live; Sports Odds and Spotify hubs were missing. | Medium (Google + inbound) | High for every niche | **Acted:** Sports Odds and Spotify hubs + blog how-tos, homepage and sitemap updated (PR on GeminiGeorge22.github.io). |
| Hugging Face datasets + Spaces | Existing 8 official-source explorers (24 Nov). Collection already public. Etsy/Sports/Spotify had been skipped (no official public snapshot). HF is a default place researchers look for sample tables. | Medium (HF traffic; sample-data buyers) | High as a preview, then Store link | **Acted:** 3 illustrative CC0 samples + 3 static Spaces (no live scrape, no secrets, hardware none, RUNNING). Linked to Store. Kaggle phone gate not used. |
| Apify integrations (Google Sheets add-on, MCP) | Official Apify Sheets and MCP (`mcp.apify.com`) already run any Actor. | Medium–high | High, already covered | No new official-integration PR. README/site already point at MCP 1-minute path. |
| RapidAPI-style API hubs | Etsy Search Results API already listed (2026-10-06). Ledger: RapidAPI is a paid/payouts marketplace, **held-needs-Mark**. apilist.fun and freepublicapis.com submit pages exist but need account/captcha (remaining). | Medium if free | Medium | Not filed. Sports/Spotify RapidAPI not opened. |
| GPT Store / Claude connector dirs / LangChain, LlamaIndex, CrewAI hubs | Our site already ships dialect packs. Upstream tool hubs are PRs on repos we do not own (excluded). GPT Store / Custom GPT needs a ChatGPT account and Mark OK. | Medium for AI builders, weak for Etsy/gov/sports end users | Medium for devs | No new accounts, no upstream PRs. Dialects already live. |
| Etsy seller forums, newsletters, tool round-ups | eRank documents a **29,000-member** Facebook community and a free membership; seller newsletters and blogs are where sellers find eRank/Marmalead/Alura. Forums often identity-gated; Facebook excluded as a new social post surface here. | High for Etsy buyers (our only users30>10 Actor) | Highest after Store search | **Drafts only** (newsletter pitch + PH/Show HN/YouTube). |
| Recruiting / GovCon / civic / music / sports newsletters | Buyer-niche newsletters (Recruiting Brainfood, IRE/NICAR, GovCon, Music Ally, sports-odds lists) are how those users find tools. | Medium per niche | High | **Drafts only** (DraftExternalMessage-ready in followups/end-user-paths-drafts-2026-11-25.md). |
| data.world | Account-gated. | Low–medium | Medium | Not filed. |
| Niche Awesome lists | Our forks of ecommerce/soccer/sports lists exist; **upstream PRs excluded**. Own-fork edits would not reach the canonical list. | Low unless upstream | Medium | Not edited, no third-party PRs. |
| Product Hunt / Show HN / BetaList / Indie Hackers / AlternativeTo | Free queues; PH/Show HN need Mark OK; others remaining (account/captcha). | Medium bursts | Medium | **Drafts only** for PH and Show HN. No launches. |
| Kaggle | Phone gate is Mark's. Official-source mirrors already live (24 Nov). No Etsy/Sports/Spotify live-scrape mirrors (same license skip). | Medium | Medium for official data; low for these three | Skipped (gate + license). |

## B) Filed / published (URLs and raw read-backs)

### PAGE-1 listing PUTs (Search, Sports Odds, Spotify)

Applied 2026-11-25 via `PUT https://api.apify.com/v2/acts/publicrecords~<slug>` with only `title`, `description`, `seoTitle`, `seoDescription`. Token from env, never written. pricingInfos, exampleRunInput, categories, taggedBuilds, isPublic, notice unchanged. Evidence: `ledger/followups/page1-2026-11-25-search-odds-spotify/<slug>/{put-body,readback_compare}.json`.

**Etsy Search (`etsy-search-scraper`)** — head query "Search". Rank evidence: **not in first 100** for "etsy search scraper"; **#37** for "etsy scraper"; **#30** for "etsy search". K1: "Etsy search scraper", "Etsy product scraper", "market data".

- title: Etsy Search Scraper — Prices, Bestsellers & Ads (47)
- seoTitle: Etsy Search Scraper: Prices, Bestsellers & Ads (46)
- seoDescription (153): Etsy search scraper and product scraper for market data: search results with price, rating, reviews, Bestseller badges, ad flags, shop and rank position.
- Public GET /v2/acts 200, title matches expected. Store HTML `<title>` at 16:09 ET still "Etsy Scraper: Search Results, Prices & Bestsellers · Apify" (old seoTitle; CDN lag).

**Sports Odds (`sports-odds-api`)** — head query "Sports Odds". Rank evidence: **not in first 100** for "sports odds"; **#37** "odds api"; **#72** "sports odds api"; **#80** "sports betting odds" / "unibet odds". Honesty kept: not DraftKings or FanDuel.

- title: Sports Odds API: BetRivers, Unibet, Paf, Svenska Spel (53)
- seoTitle: Sports Odds API: BetRivers, Unibet, Paf, ATG (44)
- seoDescription (150): Sports odds API for sports betting odds: BetRivers, Unibet, Paf, Svenska Spel and ATG prices per game, plus the best price. Not DraftKings or FanDuel.
- Public GET 200 and Store HTML `<title>`: "Sports Odds API: BetRivers, Unibet, Paf, ATG · Apify".

**Spotify (`spotify-play-count-scraper`)** — head query "Spotify". Rank evidence: **not in first 100** for "spotify play count", "spotify play count scraper", "spotify monthly listeners" (users30 0; #1 has 199). Title now leads with the exact head phrase.

- title / seoTitle: Spotify Play Count Scraper: Monthly Listeners (45)
- seoDescription (155): Spotify play count scraper for albums, playlists or artists: play counts, monthly listeners and followers. Optional daily streams. No login. Pay per track.
- Public GET 200 and Store HTML `<title>`: "Spotify Play Count Scraper: Monthly Listeners · Apify".

### Hugging Face (illustrative samples, not live scrapes)

All HTTP 200 logged-out; Spaces `get_space_runtime` stage=RUNNING, hardware=None, private=false. Collection: https://huggingface.co/collections/Publicrecords/public-records-open-data-and-actors-6b05ff509ac4723032284a4e

| Asset | URL | Read-back |
|---|---|---|
| Dataset | https://huggingface.co/datasets/Publicrecords/etsy-search-results-sample | 200, title "Publicrecords/etsy-search-results-sample · Datasets at Hugging Face"; CSV 200 contains "ceramic mug" |
| Dataset | https://huggingface.co/datasets/Publicrecords/sports-odds-api-sample | 200; CSV 200 contains "Example City" |
| Dataset | https://huggingface.co/datasets/Publicrecords/spotify-play-count-sample | 200; CSV 200 contains "North Window" |
| Space | https://huggingface.co/spaces/Publicrecords/etsy-search-data-explorer | 200, title "Public Records data explorer — Etsy search sample…"; static https://publicrecords-etsy-search-data-explorer.static.hf.space 200 |
| Space | https://huggingface.co/spaces/Publicrecords/sports-odds-data-explorer | 200; static https://publicrecords-sports-odds-data-explorer.static.hf.space 200 |
| Space | https://huggingface.co/spaces/Publicrecords/spotify-play-count-data-explorer | 200; static https://publicrecords-spotify-play-count-data-explorer.static.hf.space 200 |

Lane C official-source snapshots for Etsy/Sports/Spotify stay **not-listed** (these are fictional preview rows, CC0, clearly labeled).

### Publisher site and Make/n8n templates

Published on GeminiGeorge22.github.io (this pass) and publicrecords-mcp:

- https://geminigeorge22.github.io/sports-odds-api/
- https://geminigeorge22.github.io/spotify-play-count/
- https://geminigeorge22.github.io/blog/sports-odds-api/
- https://geminigeorge22.github.io/blog/spotify-play-counts/
- https://geminigeorge22.github.io/integrations/ (now lists Etsy, Velocity, Sports, Spotify n8n JSON)
- https://github.com/GeminiGeorge22/publicrecords-mcp/tree/main/templates/make

Site URL read-backs are taken after the github.io PR is merged (see that PR). Templates land in the ledger PR.

### Not filed this pass

RapidAPI (held-needs-Mark, paid marketplace). apilist.fun, freepublicapis.com, AlternativeTo, BetaList, Indie Hackers, Make share links, data.world: remaining, account/captcha. No Kaggle uploads. No PRs on repos we do not own. No X/Reddit/Skool.

## Drafts needing Mark's OK

See [end-user-paths-drafts-2026-11-25.md](end-user-paths-drafts-2026-11-25.md): Product Hunt, Show HN, YouTube outline, and newsletter pitches (Etsy sellers, music marketers, recruiters, GovCon/civic, sports odds). DraftExternalMessage-ready. Not sent.

## Master notes

PAGE-1 for these three was applied by Marketer (not a Master paste). No Actor code, prices, categories, or example inputs were changed. Etsy Store HTML title may lag the API; please do not revert the four fields. Sports Store categories on the acts API remain `DEVELOPER_TOOLS` only (Store card already shows broader tags) — flag only, not changed.
