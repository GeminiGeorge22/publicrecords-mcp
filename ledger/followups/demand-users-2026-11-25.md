# Demand-to-users pass — 25 Nov 2026, 3:45–4:00 PM ET America/Toronto

Mark t1210u: "Get us users now." Public Records brand only. No X, Reddit, Skool Actor, HN/SO/dev.to posts, or PRs on repos we do not own. Cap 10 comments. `/r/` tagged Store redirects were not available (`https://apify.com/r/publicrecords/...` returned HTTP 404); Store URLs were used instead.

## Demand threads found

Live asks that matched our Actors:

- **The Colony — Etsy for digital printables: revive it or let it die?** https://thecolony.ai/posts/7c4d4455-30eb-4666-937a-87829e05c815 — frankiedewitt, 24 Nov 2026. Asking whether Etsy search is still a discovery channel for digital downloads, and how to read their 70 visits / 0 orders before deactivating 42 listings on 1 Mar 2027. Same question also appeared on Agentboard (`thr_3f7395fcff7f18fe`); we did not duplicate the reply there.

Looked at but not replied (not an open ask for our work, already answered, or off-scope):

- Agent Socials #work https://socialnetworkforaiagents.com/c/work/p_0mveutx15oghc1pi8 — main-man-j wrote a shelved federal bid timing test; hermes had already pointed at the public USAspending API.
- Colony / Agentboard copies of Frankie's broader shop-ops threads (network wiring, Pinterest numbers) — same author, not a second Etsy-data ask; no duplicate replies.
- Forum for Agents, Agent Socials search, SwarmMemo, ZZBoard, Pluribotica, Clawprint, Agents Gather: no other live "how do I get X" threads for LinkedIn-from-website, GovCon, Legistar, odds, tennis, Spotify, or ads transparency.
- GitHub: no open help-wanted issue/discussion that asked exactly for these capabilities (broad search only hit unrelated registers).
- Hacker News and Stack Overflow: older threads exist; posting would be self-promo against their norms, so no comments. dev.to posting skipped (TRAFFIC-1 week-1 verdict due 11-26; FMF signed the account out).
- Apify community.apify.com was not readable (TLS EOF). forum.apify.com is a help portal shell, not a public question API we could search reliably.

## Replies (1 of 10)

| Site | URL | Raw read-back |
|---|---|---|
| The Colony | https://thecolony.ai/posts/7c4d4455-30eb-4666-937a-87829e05c815#comment-5f50bc72-ca5b-42f3-8aae-9a8c2fe73bcf | POST comment HTTP 201; GET https://thecolony.ai/api/v1/comments/5f50bc72-ca5b-42f3-8aae-9a8c2fe73bcf HTTP 200, id 5f50bc72-ca5b-42f3-8aae-9a8c2fe73bcf, author public-records / Public Records, created 3:51 PM ET America/Toronto. Thread HTML GET HTTP 200, title "Etsy for digital printables: revive it or let it die? - The Colony", comment body present. |

The reply tells Frankie how to get the Shop Manager traffic split without us, how to do a no-tool competitor/search read for whether digital-download discovery is still alive, and then discloses the two Etsy Actors (they cannot read Shop Manager).

## README and profile changes

- `README.md`: new "Try it in 1 minute" section leads, with the Store example input and the MCP pin path.
- Profiles updated to lead with the same Store try path:
  - The Colony https://thecolony.ai/u/public-records — PUT /api/v1/users/me HTTP 200; public user API HTTP 200, bio starts "Try in 1 minute…"
  - Agentboard.ai https://www.agentboard.ai/a/public-records — PATCH /api/me `description` HTTP 200
  - Agent Socials https://socialnetworkforaiagents.com/a/public-records — PATCH /v1/me HTTP 200
  - Agents Gather https://agentsgather.org/agents/185 — POST /api/v1/profile.update HTTP 200; GET /api/v1/me shows the new description
  - Clawprint https://clawprint.org/u/Public%20Records — PATCH /api/me HTTP 200, "Bio updated"
- No bio-update route found for ZZBoard or Swarm Bar (handle-only). Pluribotica had no matching profile-update operation in a quick operations lookup; existing description left as registered. Forum for Agents was an unregistered post; Board for Agents has no profile.

## Master list (Store / Actor code — not changed)

Checked via the public Apify API (`GET /v2/store?username=publicrecords` and `GET /v2/acts/publicrecords~{actor}`) at 3:45 PM ET America/Toronto:

- Tennis Scores API **has** a `pictureUrl` (icon present). Not listed as a blocker.
- Every publicrecords Actor (excluding the Skool Actor) has a non-empty `exampleRunInput`. No missing example-input blocker found in the public API.
- No Store-copy or price changes were made.

No conversion blockers with evidence for Master on this pass.

## users7 / users30 baseline

Source: `GET https://api.apify.com/v2/store?username=publicrecords` (public, no token), as of 3:45 PM ET America/Toronto, 25 Nov 2026. The Skool Actor is excluded per standing rule. Machine-readable copy: `ledger/followups/users-baseline-2026-11-25.json`.

| Actor | users7 | users30 | users total | runs | Store |
|---|---:|---:|---:|---:|---|
| publicrecords/etsy-search-scraper | 10 | 16 | 20 | 666 | https://apify.com/publicrecords/etsy-search-scraper |
| publicrecords/etsy-shop-velocity | 1 | 3 | 5 | 1277 | https://apify.com/publicrecords/etsy-shop-velocity |
| publicrecords/sports-odds-api | 1 | 2 | 5 | 61 | https://apify.com/publicrecords/sports-odds-api |
| publicrecords/ashby-jobs-scraper | 1 | 1 | 2 | 92 | https://apify.com/publicrecords/ashby-jobs-scraper |
| publicrecords/company-social-profile-finder | 0 | 1 | 7 | 799 | https://apify.com/publicrecords/company-social-profile-finder |
| publicrecords/google-ads-transparency-scraper | 1 | 1 | 2 | 44 | https://apify.com/publicrecords/google-ads-transparency-scraper |
| publicrecords/legistar-meetings-scraper | 0 | 1 | 4 | 170 | https://apify.com/publicrecords/legistar-meetings-scraper |
| publicrecords/lever-jobs-scraper | 1 | 1 | 2 | 83 | https://apify.com/publicrecords/lever-jobs-scraper |
| publicrecords/tennis-scores-api | 1 | 1 | 2 | 1 | https://apify.com/publicrecords/tennis-scores-api |
| publicrecords/calibration-ledger | 0 | 0 | 1 | 104 | https://apify.com/publicrecords/calibration-ledger |
| publicrecords/eu-ted-notices-scraper | 0 | 0 | 3 | 174 | https://apify.com/publicrecords/eu-ted-notices-scraper |
| publicrecords/govcon-opportunity-feed | 0 | 0 | 2 | 289 | https://apify.com/publicrecords/govcon-opportunity-feed |
| publicrecords/grants-gov-scraper | 0 | 0 | 2 | 172 | https://apify.com/publicrecords/grants-gov-scraper |
| publicrecords/greenhouse-jobs-scraper | 0 | 0 | 1 | 87 | https://apify.com/publicrecords/greenhouse-jobs-scraper |
| publicrecords/smartrecruiters-jobs-scraper | 0 | 0 | 1 | 83 | https://apify.com/publicrecords/smartrecruiters-jobs-scraper |
| publicrecords/spotify-play-count-scraper | 0 | 0 | 1 | 47 | https://apify.com/publicrecords/spotify-play-count-scraper |
| publicrecords/uk-find-a-tender-scraper | 0 | 0 | 2 | 215 | https://apify.com/publicrecords/uk-find-a-tender-scraper |
| publicrecords/usaspending-awards-scraper | 0 | 0 | 2 | 173 | https://apify.com/publicrecords/usaspending-awards-scraper |
| **Total (excl. Skool Actor)** | **16** | **27** |  |  |  |

Tomorrow's scoreboard should compare against this file.
