# Kaggle mirrors of public Hugging Face snapshots, 2026-11-24 17:22 America/Toronto

Same rules: no paying, no Skool runs or Skool in new submissions, no X or Reddit, no duplicates, `[skip ci]`, raw read-backs, author Public Records, never echo secrets.

Kaggle user `publicrecords` already had two public CC0 datasets from earlier today. The API key at `~/.kaggle/kaggle.json` was used only by the Kaggle CLI (never printed, catted, or committed).

## New public datasets (HTTP 200, logged-out, public)

Near-duplicate Hugging Face snapshots of the same official source were merged into one Kaggle dataset each.

- [UK Public Tenders (OGL v3.0, 2026-11-24)](https://www.kaggle.com/datasets/publicrecords/uk-public-tenders-ogl-v3) — 177 unique notices, union of `uk-tenders-public-sample` (100) and `uk-tenders-recent` (120). License **other**, card specifies [Open Government Licence v3.0](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/). Actor: [uk-find-a-tender-scraper](https://apify.com/publicrecords/uk-find-a-tender-scraper). Examples: [publicrecords-uk-find-a-tender-scraper-examples](https://github.com/GeminiGeorge22/publicrecords-uk-find-a-tender-scraper-examples).
- [EU TED Public Procurement Notices](https://www.kaggle.com/datasets/publicrecords/eu-ted-public-procurement-notices) — 51 unique notices, union of `eu-ted-notices-public-sample` (50) and `eu-ted-notices-recent` (10). License **other**, card specifies the [TED legal notice](https://ted.europa.eu/en/about/legal-notice). Actor: [eu-ted-notices-scraper](https://apify.com/publicrecords/eu-ted-notices-scraper). Examples: [publicrecords-eu-ted-notices-scraper-examples](https://github.com/GeminiGeorge22/publicrecords-eu-ted-notices-scraper-examples).
- [Public ATS Job Posting Samples](https://www.kaggle.com/datasets/publicrecords/public-ats-job-posting-samples) — **titles and URLs only**, 621 unique postings, union of the four ATS board samples plus `public-ats-job-posting-samples` (adds the Red Bull SmartRecruiters board). License **other**. Actors: [ashby-jobs-scraper](https://apify.com/publicrecords/ashby-jobs-scraper), [greenhouse-jobs-scraper](https://apify.com/publicrecords/greenhouse-jobs-scraper), [lever-jobs-scraper](https://apify.com/publicrecords/lever-jobs-scraper), [smartrecruiters-jobs-scraper](https://apify.com/publicrecords/smartrecruiters-jobs-scraper), each with its `publicrecords-*-examples` repo.
- [US City Council Meetings (Legistar)](https://www.kaggle.com/datasets/publicrecords/us-city-council-meetings-legistar) — 160 meetings (Boston, Seattle, San Antonio, Columbus). `legistar-seattle-meetings-recent` is a complete subset (40 of 40 event ids) of `legistar-meetings-public-sample`, so both are one dataset. License **CC0-1.0** (agenda/minutes files stay with the cities). Actor: [legistar-meetings-scraper](https://apify.com/publicrecords/legistar-meetings-scraper). Examples: [publicrecords-legistar-meetings-scraper-examples](https://github.com/GeminiGeorge22/publicrecords-legistar-meetings-scraper-examples).
- [IMF Real GDP Growth Forecasts](https://www.kaggle.com/datasets/publicrecords/imf-real-gdp-growth-forecasts) — 200 economies, DataMapper `NGDP_RPCH` 2018–2027, from `imf-real-gdp-growth-forecasts`. License **other**, card specifies [IMF copyright/terms](https://www.imf.org/en/About/copyright). Actor: [calibration-ledger](https://apify.com/publicrecords/calibration-ledger). Examples: [publicrecords-calibration-ledger-examples](https://github.com/GeminiGeorge22/publicrecords-calibration-ledger-examples).
- [Company Official Social Links (Wikidata)](https://www.kaggle.com/datasets/publicrecords/company-official-social-links) — 21-row CC0 Wikidata sample from `company-official-social-links`. Actor: [company-social-profile-finder](https://apify.com/publicrecords/company-social-profile-finder). Examples: [publicrecords-company-social-profile-finder-examples](https://github.com/GeminiGeorge22/publicrecords-company-social-profile-finder-examples).

## Already on Kaggle (not re-uploaded; cards updated)

- [Open US Federal Grants (Grants.gov 2026-11-24)](https://www.kaggle.com/datasets/publicrecords/open-us-federal-grants-grants-gov-2026-11-24) — CC0, 787 posted Grants.gov opportunities. `Publicrecords/govcon-open-grants-snapshot` is SHA-256 identical to `Publicrecords/us-open-federal-grants`, so it was not uploaded as a third dataset. Card now also links both Actors, both example repos, and both HF dataset slugs.
- [Largest US Federal Contract Awards (USAspending)](https://www.kaggle.com/datasets/publicrecords/largest-us-federal-contract-awards-usaspending) — CC0, top 100 awards. Card now links [usaspending-awards-scraper](https://apify.com/publicrecords/usaspending-awards-scraper), [examples](https://github.com/GeminiGeorge22/publicrecords-usaspending-awards-scraper-examples), and [us-federal-contract-awards-top100](https://huggingface.co/datasets/Publicrecords/us-federal-contract-awards-top100).

All eight dataset URLs returned HTTP 200 when fetched logged-out, with the public title in the page and no private-dataset wording. `kaggle datasets status` was `ready` for each. They appear in `kaggle datasets list --user publicrecords`.

## Not listed on this surface

Etsy, Spotify, sports odds, Google Ads Transparency, and Skool: no public Hugging Face snapshot in scope (and the brief asked to skip private, Skool, Etsy, Spotify or sports). Placement rows set to `not-listed`.

Private Hugging Face datasets under Publicrecords were not mirrored.
