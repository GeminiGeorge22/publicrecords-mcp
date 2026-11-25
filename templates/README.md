# Automation templates (n8n, Make, Zapier, Pipedream, Activepieces, Clay, Gumloop)

Every template calls the Apify API with **your own Apify token**, so runs bill to your Apify account at the Store price. Nothing here holds a token.

## n8n
Import any file in [`n8n/`](n8n) (Workflows → Import from file). Add a Header Auth credential `Authorization: Bearer <APIFY_TOKEN>`.

The Creator-ready workflow is [`n8n/grants-gov-weekday-digest.json`](n8n/grants-gov-weekday-digest.json): a weekday Grants.gov email digest with a Config node, filter and dedupe, Gmail delivery, and a failure alert. Title, description and suggested categories are in [`n8n/grants-gov-weekday-digest.md`](n8n/grants-gov-weekday-digest.md). New n8n creators should submit this one template and wait for approval. The other JSON files in this folder are thinner schedule-plus-HTTP recipes.

| Actor | n8n workflow | Store |
|---|---|---|
| Ashby Jobs Scraper | [n8n/ashby-jobs-scraper.json](n8n/ashby-jobs-scraper.json) | [apify.com/publicrecords/ashby-jobs-scraper](https://apify.com/publicrecords/ashby-jobs-scraper) |
| Calibration Ledger | [n8n/calibration-ledger.json](n8n/calibration-ledger.json) | [apify.com/publicrecords/calibration-ledger](https://apify.com/publicrecords/calibration-ledger) |
| Company Social Profile Finder | [n8n/company-social-profile-finder.json](n8n/company-social-profile-finder.json) | [apify.com/publicrecords/company-social-profile-finder](https://apify.com/publicrecords/company-social-profile-finder) |
| Etsy Search Scraper | [n8n/etsy-search-scraper.json](n8n/etsy-search-scraper.json) | [apify.com/publicrecords/etsy-search-scraper](https://apify.com/publicrecords/etsy-search-scraper) |
| Etsy Shop Daily Sales | [n8n/etsy-shop-velocity.json](n8n/etsy-shop-velocity.json) | [apify.com/publicrecords/etsy-shop-velocity](https://apify.com/publicrecords/etsy-shop-velocity) |
| EU TED Tenders Scraper | [n8n/eu-ted-notices-scraper.json](n8n/eu-ted-notices-scraper.json) | [apify.com/publicrecords/eu-ted-notices-scraper](https://apify.com/publicrecords/eu-ted-notices-scraper) |
| Google Ads Transparency Scraper | [n8n/google-ads-transparency-scraper.json](n8n/google-ads-transparency-scraper.json) | [apify.com/publicrecords/google-ads-transparency-scraper](https://apify.com/publicrecords/google-ads-transparency-scraper) |
| Federal Contracts Feed (SAM.gov + Grants.gov) | [n8n/govcon-opportunity-feed.json](n8n/govcon-opportunity-feed.json) | [apify.com/publicrecords/govcon-opportunity-feed](https://apify.com/publicrecords/govcon-opportunity-feed) |
| Grants.gov Scraper | [n8n/grants-gov-scraper.json](n8n/grants-gov-scraper.json) | [apify.com/publicrecords/grants-gov-scraper](https://apify.com/publicrecords/grants-gov-scraper) |
| Grants.gov weekday email digest (Creator template) | [n8n/grants-gov-weekday-digest.json](n8n/grants-gov-weekday-digest.json) | [apify.com/publicrecords/grants-gov-scraper](https://apify.com/publicrecords/grants-gov-scraper) |
| Greenhouse Jobs Scraper | [n8n/greenhouse-jobs-scraper.json](n8n/greenhouse-jobs-scraper.json) | [apify.com/publicrecords/greenhouse-jobs-scraper](https://apify.com/publicrecords/greenhouse-jobs-scraper) |
| City Council Meetings Scraper (Legistar) | [n8n/legistar-meetings-scraper.json](n8n/legistar-meetings-scraper.json) | [apify.com/publicrecords/legistar-meetings-scraper](https://apify.com/publicrecords/legistar-meetings-scraper) |
| Lever Jobs Scraper | [n8n/lever-jobs-scraper.json](n8n/lever-jobs-scraper.json) | [apify.com/publicrecords/lever-jobs-scraper](https://apify.com/publicrecords/lever-jobs-scraper) |
| SmartRecruiters Jobs Scraper | [n8n/smartrecruiters-jobs-scraper.json](n8n/smartrecruiters-jobs-scraper.json) | [apify.com/publicrecords/smartrecruiters-jobs-scraper](https://apify.com/publicrecords/smartrecruiters-jobs-scraper) |
| Sports Odds API | [n8n/sports-odds-api.json](n8n/sports-odds-api.json) | [apify.com/publicrecords/sports-odds-api](https://apify.com/publicrecords/sports-odds-api) |
| Spotify Play Count Scraper | [n8n/spotify-play-count-scraper.json](n8n/spotify-play-count-scraper.json) | [apify.com/publicrecords/spotify-play-count-scraper](https://apify.com/publicrecords/spotify-play-count-scraper) |
| UK Tenders Scraper | [n8n/uk-find-a-tender-scraper.json](n8n/uk-find-a-tender-scraper.json) | [apify.com/publicrecords/uk-find-a-tender-scraper](https://apify.com/publicrecords/uk-find-a-tender-scraper) |
| USAspending Awards Scraper | [n8n/usaspending-awards-scraper.json](n8n/usaspending-awards-scraper.json) | [apify.com/publicrecords/usaspending-awards-scraper](https://apify.com/publicrecords/usaspending-awards-scraper) |

## Make, Zapier, Pipedream, Activepieces, Clay, Gumloop, Relevance AI (HTTP recipe)

Use the platform's HTTP / Webhooks / API step (or the official Apify app, action *Run Actor*, Actor `publicrecords/<actor>`):

- Method: `POST`
- URL: `https://api.apify.com/v2/acts/publicrecords~<actor>/run-sync-get-dataset-items`
- Header: `Authorization: Bearer <APIFY_TOKEN>`
- Body (JSON): the example input below
- Response: a JSON array of rows; map it into Sheets, Airtable, Slack, a CRM or a Clay table.

| Actor | Example JSON input |
|---|---|
| `ashby-jobs-scraper` | `{"companies": ["ramp", "linear"], "since": "30d", "maxResults": 50, "includeDescription": true}` |
| `calibration-ledger` | `{"mode": "lookup", "source": "oecd_eo", "series": "RGDP_GROWTH_A", "geo": "CAN", "target_period": "2027", "point": "1.8", "published_at": "2026-06-01"}` |
| `company-social-profile-finder` | `{"mode": "resolve", "queries": ["apify.com"], "probeMode": "direct"}` |
| `etsy-search-scraper` | `{"queries": ["ceramic mug"], "maxPages": 1, "proxyConfiguration": {"useApifyProxy": true, "apifyProxyGroups": ["RESIDENTIAL"], "apifyProxyCountry": "US"}}` |
| `etsy-shop-velocity` | `{"shops": ["OrelCeramics", "Bestickend"]}` |
| `eu-ted-notices-scraper` | `{"publicationDateFrom": "2026-09-28", "publicationDateTo": "2026-09-28", "scope": "ALL", "maxItems": 200}` |
| `google-ads-transparency-scraper` | `{"targets": ["nike.com"], "sinceDays": 7, "region": "US", "maxAdsPerTarget": 25}` |
| `govcon-opportunity-feed` | `{"mode": "snapshot", "sources": ["sam"], "samBulk": true, "samEnrichLimit": 0, "naics": ["541512"], "postedWithinDays": 14, "maxItems": 25, "includeDescriptions": false, "includeContacts": false}` |
| `grants-gov-scraper` | `{"status": "posted", "maxItems": 200}` |
| `greenhouse-jobs-scraper` | `{"companies": ["gitlab", "cloudflare"], "since": "30d", "maxResults": 50, "includeDescription": true}` |
| `legistar-meetings-scraper` | `{"clients": ["seattle", "milwaukee", "madison", "oakland", "sanjose", "boston", "denver", "columbus"], "dateFrom": "2026-09-20", "dateTo": "2026-09-28", "maxItems": 200, "resource": "events"}` |
| `lever-jobs-scraper` | `{"companies": ["veeva", "palantir"], "since": "30d", "maxResults": 50, "includeDescription": true}` |
| `smartrecruiters-jobs-scraper` | `{"companies": ["Ubisoft2", "smartrecruiters"], "since": "30d", "maxResults": 50, "includeDescription": true}` |
| `sports-odds-api` | `{"leagues": ["basketball/nba", "american_football/nfl", "ice_hockey/nhl", "baseball/mlb", "football/england/premier_league"], "maxEvents": 10, "proxyConfiguration": {"useApifyProxy": true}, "operators": ["rsiusnj", "rsiusny", "rsiuspa", "rsicaon", "ubuk", "ubca", "paf", "svenskaspel", "atg"], "markets": "main", "includeLive": true, "startsWithinHours": 0}` |
| `spotify-play-count-scraper` | `{"urls": ["https://open.spotify.com/album/4aawyAB9vmqN3uQ7FjRGTy"], "maxTracksPerTarget": 50}` |
| `uk-find-a-tender-scraper` | `{"noticeType": ["tender"], "updatedFrom": "2026-09-28T00:00:00", "maxItems": 100}` |
| `usaspending-awards-scraper` | `{"agency": "Department of Defense", "awardTypes": ["A", "B", "C", "D"], "maxItems": 50}` |

## AI agents
Any MCP client: `https://mcp.apify.com?tools=publicrecords/<actor>` (Apify OAuth or Bearer token).
