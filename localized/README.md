# Localized listing copy (22 languages)

One file per language: `en, zh-CN, zh-TW, ja, ko, hi, id, vi, th, ru, tr, ar, he, de, fr, es, pt-BR, it, nl, pl, sv, sw`.
Each file has one entry per publicrecords Actor with `name`, `one_line`, `description`, `price_line`, `endpoint`, `server_github_url`, `registry_name` and `store_url`.

- **Actor list and prices:** read from the Apify Store API (`GET https://api.apify.com/v2/store?username=publicrecords`) on 23 Nov 2026 at 17:20 ET, not typed by hand. Tiered prices quote the Apify Free tier and say that paid plans are lower.
- **Facts:** taken from `servers/*/server.json` and the Store descriptions. The translations add no new claims.
- **Use:** directory forms and list PRs in each region (see `ledger/surfaces.csv`). When a new Actor launches, add its entry to every file, in Store order.
