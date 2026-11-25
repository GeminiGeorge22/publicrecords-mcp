# Make HTTP recipes (Public Records)

Ready-to-rebuild Make.com scenarios that call [Public Records](https://apify.com/publicrecords) Apify Actors **on your Apify account**. Set `APIFY_TOKEN` (or a Make connection) to your own token. Do not commit tokens. Author: Public Records.

The official Make template gallery is a partner/account path and is **not** submitted here. These JSON files document the HTTP module (URL, method, header, body). If Make rejects a raw import, rebuild the scenario from the same fields in one HTTP module, then map the JSON array into Sheets, Slack, or email.

Also see the n8n workflows in [`../n8n`](../n8n) and the HTTP table in [`../README.md`](../README.md).

| Recipe | Actor | Store |
|---|---|---|
| [etsy-search-scraper.json](etsy-search-scraper.json) | Etsy Search Scraper | [Store](https://apify.com/publicrecords/etsy-search-scraper) |
| [etsy-shop-velocity.json](etsy-shop-velocity.json) | Etsy Shop Sales Tracker | [Store](https://apify.com/publicrecords/etsy-shop-velocity) |
| [sports-odds-api.json](sports-odds-api.json) | Sports Odds API | [Store](https://apify.com/publicrecords/sports-odds-api) |
| [spotify-play-count-scraper.json](spotify-play-count-scraper.json) | Spotify Play Count Scraper | [Store](https://apify.com/publicrecords/spotify-play-count-scraper) |

## HTTP module (every recipe)

- Method: `POST`
- URL: `https://api.apify.com/v2/acts/publicrecords~<actor>/run-sync-get-dataset-items`
- Header: `Authorization: Bearer <APIFY_TOKEN>`
- Header: `Content-Type: application/json`
- Body: the `flow[0].mapper.data` string in the JSON file
- Response: a JSON array of rows

Disclosure: Public Records maintains these Actors; they are pay-per-use on Apify (free tier available).
