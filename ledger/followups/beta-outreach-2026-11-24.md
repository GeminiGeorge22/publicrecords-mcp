# DRAFTS — do not post

**Created:** 2026-11-24, evening, America/Toronto  
**Author:** Public Records  
**Status:** Drafts only. Do not publish, submit, or send any of these until Mark approves the specific post, naming where it goes and that it may go out.

These drafts ask real users to beta-test Public Records Actors and MCP servers and to leave feedback. GitHub stars are optional and are never rewarded or required. Incentives (README credit, first pick on new Actor and feature requests, early access to new Actors) are for feedback only — a bug report, a review, or a use case. No X or Reddit. No paying. No Skool Actor or Skool server.

Canonical guide: https://github.com/GeminiGeorge22/publicrecords-mcp/blob/main/BETA.md

## What shipped in-repo (this session)

Recorded here so the outreach drafts can point at live URLs once the publicrecords-mcp PR is merged. Commit SHAs and PR links are listed at the bottom of this file and in the pull request body.

- `BETA.md` — Public Records beta testers guide (what to test, how to report, feedback rewards, stars optional and never rewarded).
- GitHub issue forms: `.github/ISSUE_TEMPLATE/beta-feedback.yml` and `bug.yml` (not workflows). Actions were not added or changed; every commit uses `[skip ci]`.
- GitHub Discussions enabled on `publicrecords-mcp` if the API allowed it, with a pinned welcome post (see the SHAs / links section).
- Short "Try it, tell us, and star it if it helped" block plus a link to `BETA.md` near the top of the READMEs of our five named repos. Demo GIF (`assets/demo.gif`) at the top of the `publicrecords-mcp` and `publicrecords-skills` READMEs. The GIF is an asciinema-style render of a `curl` call; the printed rows are from the public Grants.gov snapshot on Hugging Face (`Publicrecords/us-open-federal-grants`), not a live Actor run. The command uses `$APIFY_TOKEN` / `YOUR_TOKEN` only.
- Repo descriptions and GitHub topics updated on `publicrecords-mcp` and `publicrecords-skills` (max 20, high-traffic topics). Homepage remains https://apify.com/publicrecords.
- Owned-surface backlinks to `publicrecords-mcp` and `publicrecords-skills` (Hugging Face dataset and Space cards, Kaggle descriptions where the API allowed an edit, Colab notebooks, Dify plugin README, examples and recipes repos). The Skool examples repo was not touched.

## Outreach drafts (do not post)

### 1. Apify Discord (and any Apify community forum thread)

**Where:** Official Apify & Crawlee Discord, https://discord.apify.com/ (invite also documented as https://discord.com/invite/jyEM2PRvMU). Pick the channel that is for sharing Actors or asking for testers (for example a `#share`, `#show-your-actor`, or community channel — use whichever the server currently marks for that). There is no separate Apify discussion forum at `forum.apify.com` (it redirects to https://help.apify.com/en/); Discord is the public community surface.

**Do not post until Mark approves.**

Suggested text:

> Hi — I'm with Public Records (https://apify.com/publicrecords). We maintain a set of Apify Actors for official public data (Grants.gov, USAspending, UK Find a Tender, EU TED, council meetings, job boards, and others) plus MCP servers and Agent Skills that run **on your own Apify account**.
>
> We are looking for a few people who will actually run one Actor on their own account and tell us what broke or what they needed. A small run is enough; Apify's free monthly credit is typically enough for that, and we do not give out credits ourselves.
>
> What to try, how to report, and what we offer for feedback (README credit, first pick on new Actor or feature requests, early access to new Actors) is here: https://github.com/GeminiGeorge22/publicrecords-mcp/blob/main/BETA.md
>
> Those rewards are for feedback only. A GitHub star is welcome if a repo saved you time, but it is optional and is never rewarded. Happy to answer questions in the thread.

### 2. MCP community Discord posts

Three short, almost identical posts. **Do not post until Mark approves**, and post only in a channel that allows sharing servers or asking for testers. Do not cross-post into every channel.

**Official MCP Discord:** https://discord.gg/modelcontextprotocol (linked from https://modelcontextprotocol.io/community/communication)

**Glama / MCP community Discord:** https://glama.ai/mcp/discord (resolves to https://discord.com/invite/TFE8FmjCdS)

**Smithery Discord:** https://discord.gg/sKd9uycgH9 (https://smithery.ai/discord if that redirect is still live)

Suggested text (trim the first sentence if the channel already knows MCP):

> Looking for a few beta testers for Public Records MCP — hosted MCP servers (and Agent Skills) that pull official public data (US grants and awards, UK/EU tenders, council meetings, job boards, and more) through Apify Actors. Each run uses **your** Apify account; we don't hold your token. Apify's free monthly credit is typically enough for a small test. We do not provide credits.
>
> Guide and feedback forms: https://github.com/GeminiGeorge22/publicrecords-mcp/blob/main/BETA.md
> Skills package: https://github.com/GeminiGeorge22/publicrecords-skills
>
> If you send useful feedback (a bug, a review, or a use case) we will credit you in the README, give you first pick on new Actor or feature requests, and give you early access to new Actors. Stars are optional and are never rewarded.

### 3. dev.to / Hashnode — "Looking for beta testers"

**Where:** A new article on https://dev.to and/or https://hashnode.com, tagged something like `mcp`, `apify`, `opendata`, `beta`. **Draft only. Do not publish until Mark approves.** Product Hunt, regional publishing, and article publishing need Mark's OK.

Title: Looking for beta testers: MCP servers for official public records

Body:

> # Looking for beta testers: MCP servers for official public records
>
> I'm with Public Records. We publish Apify Actors that read official public data — Grants.gov, USAspending, UK Find a Tender, EU TED, local council meetings, job boards, and a few others — and we wrap them as MCP servers and Agent Skills so you can use them from Cursor, Claude Desktop, Claude Code, Codex, and similar clients.
>
> Everything runs on **your** Apify account. We never ask for your token. Actor runs are billed to you; Apify's free plan includes monthly credit that is typically enough for small test runs. We do not give testers free credits.
>
> **We are looking for people who will actually run one Actor or skill and tell us what happened.** A bug report, a short review, or a concrete use case is what we need. In return we will credit you in the README if you want that, give you first pick when we ask about new Actors or features, and give you early access to new Actors. GitHub stars are optional and are never part of that.
>
> - How to join and how to report: https://github.com/GeminiGeorge22/publicrecords-mcp/blob/main/BETA.md
> - MCP servers: https://github.com/GeminiGeorge22/publicrecords-mcp
> - Agent Skills: https://github.com/GeminiGeorge22/publicrecords-skills
> - Store: https://apify.com/publicrecords
>
> If you try it and it helps, you are welcome to star the repo. If you don't, that's fine — the feedback is the useful part.
>
> Author: Public Records.

### 4. Show HN

**Do not post until Mark approves.** Show HN is held-needs-Mark.

Title: Show HN: MCP servers for Grants.gov, USAspending, UK/EU tenders, and other official records

Body:

> I maintain Public Records, a set of Apify Actors that read official public data (US grants and awards, UK Find a Tender, EU TED, council meetings, job boards, and more). This repo is the MCP pin and server cards so you can use them from Cursor, Claude Desktop, and other MCP clients. There is also an Agent Skills package.
>
> Runs happen on your own Apify account. We don't see your token. Apify's free monthly credit is typically enough for a small try; we don't provide credits.
>
> I'm looking for a few people to run one Actor and tell me what broke or what they needed: https://github.com/GeminiGeorge22/publicrecords-mcp/blob/main/BETA.md
>
> Feedback (bugs, reviews, use cases) can be credited in the README and gets early access to new Actors. Stars are optional and not rewarded.
>
> MCP: https://github.com/GeminiGeorge22/publicrecords-mcp
> Skills: https://github.com/GeminiGeorge22/publicrecords-skills
> Store: https://apify.com/publicrecords

### 5. Product Hunt — "coming soon" blurb

**Do not post or schedule until Mark approves.** Product Hunt is held-needs-Mark.

Name: Public Records MCP

Tagline: Official public records (grants, awards, tenders, meetings) as MCP tools

Coming-soon / hunter blurb:

> Public Records MCP lets you pull official public data — Grants.gov, USAspending, UK Find a Tender, EU TED, council meetings, job boards, and more — from Cursor, Claude, and other MCP clients. Each tool runs on your own Apify account.
>
> We are inviting a small beta: try one Actor, tell us what you found, and optionally star the repo if it helped. Stars are never required or rewarded. Feedback is: https://github.com/GeminiGeorge22/publicrecords-mcp/blob/main/BETA.md
>
> Links: https://github.com/GeminiGeorge22/publicrecords-mcp · https://github.com/GeminiGeorge22/publicrecords-skills · https://apify.com/publicrecords

### 6. Reply template for maintainers who merged our listing PRs

Use only on a pull request a maintainer has already merged, as a thank-you. **Do not send until Mark approves a batch, or approves sending this on a named PR.** Do not open new outside listing PRs while FLEET-23 item 4 is in force, except as Mark directs. Keep it short. Do not ask them to star, and do not offer anything in exchange for a star.

> Thanks for merging this. If you or your users try Public Records and have feedback (a bug, a review, or a use case), we have a short beta page with issue forms: https://github.com/GeminiGeorge22/publicrecords-mcp/blob/main/BETA.md
>
> Useful feedback can be credited in our README and gets early access to new Actors. A star is welcome if the repo helped, but it is optional and is never rewarded.

## Free beta-tester recruitment sites

Checked 2026-11-24, evening, America/Toronto, from the public pages named below. These are options for Mark, not submissions. **Do not file or create accounts until Mark says so.** Paid-only options are listed only so they can be skipped (no paying).

| Site | URL | Free listing? | Account needed? | Notes |
|---|---|---|---|---|
| Betabound | https://www.betabound.com/announce/ (FAQ: https://betabound.com/product-developer-faq/) | Yes — announcing a beta is free. They review submissions and do not post every one. | The announcement form asks for contact and product details. A tester account is at https://my.betabound.com/signup if you also want one; the FAQ points at the announce form itself. | Product must clearly be in beta, have a landing page that explains how to join and how to send feedback (BETA.md can be that page), and must not charge for access. They may decline a poor fit. Good first free directory. |
| TesterBuddy | https://www.testerbuddy.app/ | Claim on the site: free for developers and testers. | Yes, an account (app or web). | Aimed at iOS / Android / web app betas (TestFlight, Play, web SDK), not MCP servers. Weak fit unless we also have a web demo. |
| TestForTest | https://testfortest.org/ | Yes — points, no paid listing. | Yes (Google or Apple sign-in). | Reciprocal "you test mine" community, built around 14-day app test cycles. Poor fit for an API/MCP product. |
| AppSwap | https://appswap.net/ | Yes — credit exchange, no required store reviews. | Yes. | Peer testing for iOS, Android, and web. Weak fit for MCP. |
| TestMyBuild | https://testmybuild.app/ | Listing costs 10 earned credits, or paid credits (skip the paid path). | Yes. | Test exchange with a person in the middle. Credits can be bought — we would only use credits earned by testing, or skip. Weak fit. |
| tswap | https://testswap.app/ | Site says the beta is free. | Yes; it is built around X handles. | We do not post on X. Skip unless that changes. Also a test-exchange model, and it says it never rewards store reviews for credits. |
| Bro Find AI + Discord | https://brofindai.com/community | Claim: launching a tool on Bro Find AI is free, and that posts into their Discord. The Discord itself is free to join with no Bro Find AI account. | Discord: no Bro Find AI account required. A listing on Bro Find AI needs whatever their submit form asks. | Better topic fit (they mention MCP servers). If Mark wants a listing, use the free submit path only. |
| TestingCatalog | https://www.testingcatalog.com/ | Not a reliable free beta-recruitment board today. | Viewing is public; historical tester accounts existed. | The site is now an AI-feature news publication. It started as an Android beta catalog; that is no longer the homepage purpose. A "submit your AI tool" path was not confirmed as a free tester-recruitment form on this check. Treat as a maybe, not a primary target. A Pro plan is mentioned in older policy text — skip anything paid. |
| BetaList | https://betalist.com/ | **No. All submissions are paid** (refunded if not selected). There is no free option. | Account plus payment. | **Skip.** No paying. |
| Official MCP Discord | https://discord.gg/modelcontextprotocol | Free community, not a listing product. | Discord account. | Best-fit place for the draft in section 2. Follow their channel rules. |
| Glama MCP Discord | https://glama.ai/mcp/discord | Free community. | Discord account. | Same as above. |
| Smithery Discord | https://discord.gg/sKd9uycgH9 | Free community. | Discord account. | Same as above. |
| Apify Discord | https://discord.apify.com/ | Free community. | Discord account. | Best-fit place for the draft in section 1. |
| Indie Hackers | https://www.indiehackers.com/ | Posting in the community is free with an account. | Yes. | A "looking for beta testers" post would be a public article-like post; treat it like other article publishing and get Mark's OK before posting. Not drafted in full here. |
| Launching Next / Uneed / Fazier | already in our ledger | Launching Next was filed (long free queue; $99 fast track skipped). Uneed and Fazier sign-ups were parked earlier today when vault fill failed. | Account. | Do not re-file. Do not buy fast-track. |

Uneed, Fazier, Product Hunt, and Show HN stay in their existing held or parked states except for the drafts above.

## Commit SHAs and links

Filled 2026-11-24 21:45 America/Toronto. The publicrecords-mcp SHA will be the commit on the pull request below once it is pushed.

- publicrecords-skills: `a2cd62dd52f3ee97514b93fdd39d58deac93415c` — https://github.com/GeminiGeorge22/publicrecords-skills/commit/a2cd62dd52f3ee97514b93fdd39d58deac93415c
- publicrecords-automation-recipes: `1a66d841eb5e6ac081e6098b6f2550bb17ce2bf2` — https://github.com/GeminiGeorge22/publicrecords-automation-recipes/commit/1a66d841eb5e6ac081e6098b6f2550bb17ce2bf2
- publicrecords-dify-plugin: `80708f7e542b03f1c0a448594c63842ba64e975c` — https://github.com/GeminiGeorge22/publicrecords-dify-plugin/commit/80708f7e542b03f1c0a448594c63842ba64e975c
- publicrecords-tennis-scores-api-examples: `47154acc2ab4372b7cf59861b3ac2049a029b546` — https://github.com/GeminiGeorge22/publicrecords-tennis-scores-api-examples/commit/47154acc2ab4372b7cf59861b3ac2049a029b546
- GitHub Discussions enabled on publicrecords-mcp (free public repo). Welcome post: https://github.com/GeminiGeorge22/publicrecords-mcp/discussions/46 (General). A first attempt at the same post (#45) had a broken body and was deleted. Pinning via the GraphQL API was not available on this token (no `pinDiscussion` mutation); pin #46 from the GitHub UI if you want it stuck at the top.
- Beta issue label created. Issue forms ship in the publicrecords-mcp PR (they appear on `main` after merge).
- Demo GIF source rows: public Hugging Face snapshot `Publicrecords/us-open-federal-grants` (Grants.gov posted opportunities, 2026-11-24). No Actor was run and no token was used.

### publicrecords-mcp PR and later owned-surface work

- publicrecords-mcp PR: https://github.com/GeminiGeorge22/publicrecords-mcp/pull/47 — commit `bd2025e5b7e36951a7b18dd0c50787cb9a147eac`
- Tennis examples notebook follow-up (README was already on `47154ac`): see examples list below.

Example repos (README and/or `notebooks/quickstart.ipynb`, `[skip ci]` on main). The Skool examples repo was not touched:
- publicrecords-tennis-scores-api-examples: `74e4a4b6be2e5a2d315aad9b8d70d133c667bb66` — https://github.com/GeminiGeorge22/publicrecords-tennis-scores-api-examples/commit/74e4a4b6be2e5a2d315aad9b8d70d133c667bb66 (notebooks/quickstart.ipynb)
- publicrecords-usaspending-awards-scraper-examples: `44dcc952ef0fce23c5638ce8856b025d23268bba` — https://github.com/GeminiGeorge22/publicrecords-usaspending-awards-scraper-examples/commit/44dcc952ef0fce23c5638ce8856b025d23268bba (README.md, notebooks/quickstart.ipynb)
- publicrecords-uk-find-a-tender-scraper-examples: `be6577d559dd5c6e77a9e33a28e60d3febbf6acd` — https://github.com/GeminiGeorge22/publicrecords-uk-find-a-tender-scraper-examples/commit/be6577d559dd5c6e77a9e33a28e60d3febbf6acd (README.md, notebooks/quickstart.ipynb)
- publicrecords-spotify-play-count-scraper-examples: `483c5ebbe35bc69cbb0833cebfc2823d2c9e45f5` — https://github.com/GeminiGeorge22/publicrecords-spotify-play-count-scraper-examples/commit/483c5ebbe35bc69cbb0833cebfc2823d2c9e45f5 (README.md, notebooks/quickstart.ipynb)
- publicrecords-sports-odds-api-examples: `71065b0e8fd4ac16de3a4813a2e4b422a7a751b1` — https://github.com/GeminiGeorge22/publicrecords-sports-odds-api-examples/commit/71065b0e8fd4ac16de3a4813a2e4b422a7a751b1 (README.md, notebooks/quickstart.ipynb)
- publicrecords-smartrecruiters-jobs-scraper-examples: `22e442e0c731d23b74e3e6e8d739eab4c8f5299c` — https://github.com/GeminiGeorge22/publicrecords-smartrecruiters-jobs-scraper-examples/commit/22e442e0c731d23b74e3e6e8d739eab4c8f5299c (README.md, notebooks/quickstart.ipynb)
- publicrecords-lever-jobs-scraper-examples: `51ebea5dfba8ec2e53628e4921384b0a76003b33` — https://github.com/GeminiGeorge22/publicrecords-lever-jobs-scraper-examples/commit/51ebea5dfba8ec2e53628e4921384b0a76003b33 (README.md, notebooks/quickstart.ipynb)
- publicrecords-legistar-meetings-scraper-examples: `c66c5f661991caa42e1b7424f63899e649135e5f` — https://github.com/GeminiGeorge22/publicrecords-legistar-meetings-scraper-examples/commit/c66c5f661991caa42e1b7424f63899e649135e5f (README.md, notebooks/quickstart.ipynb)
- publicrecords-greenhouse-jobs-scraper-examples: `e2f21dcee9a5ef217aeb39ce236ccf625155d067` — https://github.com/GeminiGeorge22/publicrecords-greenhouse-jobs-scraper-examples/commit/e2f21dcee9a5ef217aeb39ce236ccf625155d067 (README.md, notebooks/quickstart.ipynb)
- publicrecords-grants-gov-scraper-examples: `c156b3acfc4841bfbbea3cd6204cb9caa2f82bc6` — https://github.com/GeminiGeorge22/publicrecords-grants-gov-scraper-examples/commit/c156b3acfc4841bfbbea3cd6204cb9caa2f82bc6 (README.md, notebooks/quickstart.ipynb)
- publicrecords-govcon-opportunity-feed-examples: `82c23613b2d5312e1426016da829807ea8ebdee2` — https://github.com/GeminiGeorge22/publicrecords-govcon-opportunity-feed-examples/commit/82c23613b2d5312e1426016da829807ea8ebdee2 (README.md, notebooks/quickstart.ipynb)
- publicrecords-google-ads-transparency-scraper-examples: `55a1406cb37482e02d6f437e3a01bca70090dd4e` — https://github.com/GeminiGeorge22/publicrecords-google-ads-transparency-scraper-examples/commit/55a1406cb37482e02d6f437e3a01bca70090dd4e (README.md, notebooks/quickstart.ipynb)
- publicrecords-eu-ted-notices-scraper-examples: `2007a2f9083a80d0a029328abc91d5fa2103ef2d` — https://github.com/GeminiGeorge22/publicrecords-eu-ted-notices-scraper-examples/commit/2007a2f9083a80d0a029328abc91d5fa2103ef2d (README.md, notebooks/quickstart.ipynb)
- publicrecords-etsy-shop-velocity-examples: `6a0888d0bd32caf525ccfe7cff0e795253225340` — https://github.com/GeminiGeorge22/publicrecords-etsy-shop-velocity-examples/commit/6a0888d0bd32caf525ccfe7cff0e795253225340 (README.md, notebooks/quickstart.ipynb)
- publicrecords-etsy-search-scraper-examples: `cac5e0e3c8d6c2d3d9cb3b9e3c1a4586cb32d472` — https://github.com/GeminiGeorge22/publicrecords-etsy-search-scraper-examples/commit/cac5e0e3c8d6c2d3d9cb3b9e3c1a4586cb32d472 (README.md, notebooks/quickstart.ipynb)
- publicrecords-company-social-profile-finder-examples: `394da3b728dcf3e6ec9befd171ae15dd26348ea4` — https://github.com/GeminiGeorge22/publicrecords-company-social-profile-finder-examples/commit/394da3b728dcf3e6ec9befd171ae15dd26348ea4 (README.md, notebooks/quickstart.ipynb)
- publicrecords-calibration-ledger-examples: `1b80620d3a4ba4c25ada1224668c7cd1edf7d44f` — https://github.com/GeminiGeorge22/publicrecords-calibration-ledger-examples/commit/1b80620d3a4ba4c25ada1224668c7cd1edf7d44f (README.md, notebooks/quickstart.ipynb)
- publicrecords-ashby-jobs-scraper-examples: `adfa670e4e93904b931d081c053859c19f197904` — https://github.com/GeminiGeorge22/publicrecords-ashby-jobs-scraper-examples/commit/adfa670e4e93904b931d081c053859c19f197904 (README.md, notebooks/quickstart.ipynb)

Hugging Face (org `Publicrecords`, write as that account): public dataset and Space cards that already had a README now link to publicrecords-mcp, publicrecords-skills, and BETA.md. A first pass glued the BETA.md bullet onto the next line on some cards; a second commit fixed the line break. Ten private/internal datasets had no README and were left private and unchanged. The Skool dataset was skipped and not made public.

Kaggle (owner `publicrecords`, metadata `--update` only, no new versions of the data files): all 8 public mirrors had mcp / skills / BETA.md links appended to their descriptions:
- https://www.kaggle.com/datasets/publicrecords/company-official-social-links
- https://www.kaggle.com/datasets/publicrecords/imf-real-gdp-growth-forecasts
- https://www.kaggle.com/datasets/publicrecords/us-city-council-meetings-legistar
- https://www.kaggle.com/datasets/publicrecords/public-ats-job-posting-samples
- https://www.kaggle.com/datasets/publicrecords/eu-ted-public-procurement-notices
- https://www.kaggle.com/datasets/publicrecords/uk-public-tenders-ogl-v3
- https://www.kaggle.com/datasets/publicrecords/largest-us-federal-contract-awards-usaspending
- https://www.kaggle.com/datasets/publicrecords/open-us-federal-grants-grants-gov-2026-11-24

