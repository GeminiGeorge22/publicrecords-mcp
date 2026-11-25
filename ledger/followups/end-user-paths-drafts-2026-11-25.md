# Drafts needing Mark's OK — end-user paths, 2026-11-25 16:15 America/Toronto

None of these have been sent or published. Brand: Public Records only.

## 1) Product Hunt (free listing; do not launch until OK)

**Name:** Etsy Search Scraper by Public Records  
**Tagline:** Etsy search results as rows: prices, badges, ads, and rank  
**First comment / description:**

Etsy sellers and researchers often need a table of what Etsy actually shows for a keyword — price, reviews, Bestseller / Star Seller badges, ad flags, shop, and rank — not a screenshot.

I maintain Etsy Search Scraper on Apify Store (publicrecords/etsy-search-scraper). You run it on your own Apify account (free tier available), pay per listing row. Companion Actor: Etsy Shop Sales Tracker for daily shop counters.

Try it: https://apify.com/publicrecords/etsy-search-scraper  
How-to: https://geminigeorge22.github.io/etsy-search-scraper/

Not affiliated with Etsy, Inc.

(Optional follow-up launch for Sports Odds API and Spotify Play Count Scraper, same rules, after this one.)

## 2) Show HN (do not post until OK)

**Title:** Show HN: Apify Actors for Etsy search, sports odds, and Spotify play counts

**Body:**

I maintain a small set of pay-per-use data Actors on Apify under Public Records. The three most useful for end users right now:

- Etsy Search Scraper — keyword / market / category to listing rows (price, badges, ad flag, rank). https://apify.com/publicrecords/etsy-search-scraper
- Sports Odds API — live and pre-game odds from BetRivers, Unibet, Paf, Svenska Spel and ATG, best price per outcome. Not DraftKings or FanDuel. https://apify.com/publicrecords/sports-odds-api
- Spotify Play Count Scraper — play counts, monthly listeners and followers from a public link, no login. https://apify.com/publicrecords/spotify-play-count-scraper

Each one has a 1-minute path (Store example or `https://mcp.apify.com?tools=publicrecords/<actor>` with your Apify account), plus n8n/Make recipes in https://github.com/GeminiGeorge22/publicrecords-mcp/tree/main/templates and short how-tos on https://geminigeorge22.github.io/

Happy to answer questions about inputs, pricing, or what the Actors do not do.

## 3) YouTube / tutorial blog outline (do not record or publish until OK)

**Title:** Scrape Etsy search results into a spreadsheet in 5 minutes (Public Records)

**Outline:** (1) The question: what does Etsy show for this keyword? (2) Open the Store example `{"queries":["ceramic mug"],"maxPages":1}`. (3) Download the dataset, glance at price / badges / ads / rank. (4) Optional: pin MCP or import the n8n/Make recipe. (5) Join shops to Etsy Shop Sales Tracker if you care about velocity. Disclosure on screen: I maintain these Actors; not affiliated with Etsy. Link the how-to page.

Companion videos (same format): Sports Odds API (not DK/FD); Spotify play counts (no login).

## 4) Newsletter pitches — DraftExternalMessage-ready (do not send until OK)

### 4a) Etsy seller newsletter (eRank blog / similar seller education list)

Subject: Free how-to: turn an Etsy search into a pricing table

Body:

Hi — I'm the maintainer of Public Records on Apify. I wrote a short, free how-to for Etsy sellers who want a spreadsheet of what Etsy actually shows for a keyword (price, reviews, Bestseller / Star Seller badges, ads, rank), plus a companion shop-sales tracker.

It works on Apify's free tier for a test run; after that it's pay per listing row on the seller's own account. Not affiliated with Etsy.

How-to: https://geminigeorge22.github.io/etsy-search-scraper/  
Store: https://apify.com/publicrecords/etsy-search-scraper

Happy to adapt this as a guest tip if it's useful to your readers. No payment asked.

Thanks,  
Public Records (apify.com/publicrecords)

### 4b) Music-marketer newsletter (Music Ally or similar)

Subject: A no-login way to pull Spotify play counts and monthly listeners

Body:

Hi — I maintain the Spotify Play Count Scraper on Apify (Public Records). It takes a public track, album, playlist or artist link and returns play counts, monthly listeners and followers. No Spotify login. Pay per track on the user's own Apify account (free tier for a test).

Short how-to: https://geminigeorge22.github.io/spotify-play-count/  
Store: https://apify.com/publicrecords/spotify-play-count-scraper

Not affiliated with Spotify. Glad to send a guest paragraph if you want it for a tools round-up. No payment asked.

Thanks,  
Public Records

### 4c) Recruiting newsletter (Recruiting Brainfood or similar)

Subject: ATS job-board scrapers (Greenhouse, Lever, Ashby, SmartRecruiters) as JSON feeds

Body:

Hi — I maintain Public Records on Apify, including scrapers that pull new job postings since any date from public Greenhouse, Lever, Ashby and SmartRecruiters boards (titles, URLs, timestamps; optional descriptions). Recruiters and talent-intel folks can schedule them in n8n or pin them in MCP.

Docs: https://geminigeorge22.github.io/greenhouse-jobs/ (and /lever-jobs, /ashby-jobs, /smartrecruiters-jobs)  
Store: https://apify.com/publicrecords

Runs on the user's own Apify account. Happy to write a short tools blurb. No payment asked.

Thanks,  
Public Records

### 4d) GovCon / civic newsletter (The Bid Lab, IRE/NICAR digest, or similar)

Subject: Official federal, EU, UK and city-council feeds as flat JSON

Body:

Hi — I maintain Public Records on Apify: SAM.gov + Grants.gov (Federal Opportunity Feed), Grants.gov search, USAspending awards, EU TED, UK Find a Tender, and Legistar city-council meetings. Each one is a flat JSON feed you can schedule or pin in MCP, running on your own Apify account.

Docs start at https://geminigeorge22.github.io/govcon/ (also /grantsgov, /usaspending, /ted, /uktender, /legistar).

If a tools or data-journalism round-up would use a short, factual blurb, I can send one. No payment asked. Disclosure: I maintain these Actors.

Thanks,  
Public Records

### 4e) Sports-odds / betting-tools newsletter

Subject: Sports odds API for BetRivers, Unibet, Paf, Svenska Spel and ATG

Body:

Hi — I maintain a Sports Odds API on Apify (Public Records) that returns live and pre-game odds from BetRivers, Unibet, Paf, Svenska Spel and ATG, with the best price per outcome, in one call. It is not a DraftKings or FanDuel feed. Pay per game on the user's own Apify account.

How-to: https://geminigeorge22.github.io/sports-odds-api/  
Store: https://apify.com/publicrecords/sports-odds-api

Glad to contribute a short, factual tools note. No payment asked.

Thanks,  
Public Records
