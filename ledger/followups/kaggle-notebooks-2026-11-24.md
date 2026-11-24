# Kaggle notebooks for the 8 public datasets, 2026-11-24 17:31 America/Toronto

Same rules: no paying, no Skool runs, no X or Reddit, no duplicates, `[skip ci]`, raw read-backs, author Public Records, never echo secrets, never submit a phone number.

## What shipped

One notebook per public Kaggle dataset was pushed with `kaggle kernels push` under user `publicrecords`, with the matching dataset attached as `dataset_sources`. Internet and GPU were off. Author text is Public Records. Each notebook loads the CSV, shows a small real table and chart, and ends with a **Get fresh data** section that shows `apify-client` using `os.environ['APIFY_TOKEN']` as an empty placeholder behind an `if token:` guard (the Actor call is also commented). No token from the box was written into any notebook. Kernel logs for every run printed that the token is empty (expected) and contained no box secrets.

All eight runs reached `KernelWorkerStatus.COMPLETE`:

- [explore-uk-public-tenders-ogl-v3](https://www.kaggle.com/code/publicrecords/explore-uk-public-tenders-ogl-v3) — 177 unique notices
- [explore-eu-ted-public-procurement-notices](https://www.kaggle.com/code/publicrecords/explore-eu-ted-public-procurement-notices) — 51 unique TED notices
- [explore-public-ats-job-posting-samples](https://www.kaggle.com/code/publicrecords/explore-public-ats-job-posting-samples) — 621 unique postings (titles and URLs only)
- [explore-us-city-council-meetings-legistar](https://www.kaggle.com/code/publicrecords/explore-us-city-council-meetings-legistar) — 160 meetings
- [explore-imf-real-gdp-growth-forecasts](https://www.kaggle.com/code/publicrecords/explore-imf-real-gdp-growth-forecasts) — 200 economies
- [explore-company-official-social-links](https://www.kaggle.com/code/publicrecords/explore-company-official-social-links) — 21 companies
- [explore-open-us-federal-grants](https://www.kaggle.com/code/publicrecords/explore-open-us-federal-grants) — 787 posted grant opportunities
- [explore-largest-us-federal-contract-awards](https://www.kaggle.com/code/publicrecords/explore-largest-us-federal-contract-awards) — 100 awards

## Blocker: notebooks are not public

`kaggle kernels push` with `is_private: false` (and a later flip of the UK notebook from private to public) returned HTTP 403 from SaveKernel: **Phone verification is required to make a notebook public.** Phone numbers are Mark's and were not submitted. Private pushes succeeded. Logged-out GET of each URL above returned **HTTP 404** (Kaggle hides private notebooks; title was the generic Kaggle home title). They are therefore recorded as **held-needs-Mark**, not live.

After Mark phone-verifies the publicrecords Kaggle account, the same notebooks can be pushed with `is_private: false`, re-checked logged-out for HTTP 200, and the ledger rows flipped to live.
