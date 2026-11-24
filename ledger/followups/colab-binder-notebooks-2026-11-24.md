# Colab/Binder notebooks, 2026-11-24 17:48 America/Toronto

Same rules: no paying, no Skool runs, no X or Reddit, no duplicates, `[skip ci]`, raw read-backs, author Public Records, never echo secrets, never use a token from the box.

## Notebooks

One `notebooks/quickstart.ipynb` was added to each of the 17 non-Skool `GeminiGeorge22/publicrecords-*-examples` repos (the Skool examples repo was not touched). Each notebook:

- Runs on Google Colab and Binder with no account changes
- Installs `apify-client` (and `datasets` where a public HF snapshot exists)
- Reads the token with `getpass` (never hardcoded, never printed, never read from the environment)
- Runs the matching Actor with a small default input only when a token is entered, and shows the result as a pandas table
- Where a public Hugging Face dataset exists, loads that dataset first so a real table renders with no token (12 of 17)

Each notebook was executed locally without a token, so only the HF path ran. Outputs are stored in the committed notebooks. A scan of sources and outputs found no secrets.

Open in Colab and Binder badges were added to `README.md` and the Lane B r6 translations (`README.de.md`, `README.es.md`, `README.fr.md`, `README.ja.md`, `README.pt.md`) without otherwise changing those files. Commits used `[skip ci]` on `main`. Actions stay off.

Logged-out HTTP 200 for every raw notebook URL and every `colab.research.google.com/github/...` URL.

### With a public HF snapshot (12)

- https://github.com/GeminiGeorge22/publicrecords-ashby-jobs-scraper-examples/blob/main/notebooks/quickstart.ipynb — Colab: https://colab.research.google.com/github/GeminiGeorge22/publicrecords-ashby-jobs-scraper-examples/blob/main/notebooks/quickstart.ipynb
- https://github.com/GeminiGeorge22/publicrecords-calibration-ledger-examples/blob/main/notebooks/quickstart.ipynb
- https://github.com/GeminiGeorge22/publicrecords-company-social-profile-finder-examples/blob/main/notebooks/quickstart.ipynb
- https://github.com/GeminiGeorge22/publicrecords-eu-ted-notices-scraper-examples/blob/main/notebooks/quickstart.ipynb
- https://github.com/GeminiGeorge22/publicrecords-govcon-opportunity-feed-examples/blob/main/notebooks/quickstart.ipynb
- https://github.com/GeminiGeorge22/publicrecords-grants-gov-scraper-examples/blob/main/notebooks/quickstart.ipynb
- https://github.com/GeminiGeorge22/publicrecords-greenhouse-jobs-scraper-examples/blob/main/notebooks/quickstart.ipynb
- https://github.com/GeminiGeorge22/publicrecords-legistar-meetings-scraper-examples/blob/main/notebooks/quickstart.ipynb
- https://github.com/GeminiGeorge22/publicrecords-lever-jobs-scraper-examples/blob/main/notebooks/quickstart.ipynb
- https://github.com/GeminiGeorge22/publicrecords-smartrecruiters-jobs-scraper-examples/blob/main/notebooks/quickstart.ipynb
- https://github.com/GeminiGeorge22/publicrecords-uk-find-a-tender-scraper-examples/blob/main/notebooks/quickstart.ipynb
- https://github.com/GeminiGeorge22/publicrecords-usaspending-awards-scraper-examples/blob/main/notebooks/quickstart.ipynb

### No public HF snapshot (5; live Actor run skipped without a token)

- https://github.com/GeminiGeorge22/publicrecords-etsy-search-scraper-examples/blob/main/notebooks/quickstart.ipynb
- https://github.com/GeminiGeorge22/publicrecords-etsy-shop-velocity-examples/blob/main/notebooks/quickstart.ipynb
- https://github.com/GeminiGeorge22/publicrecords-google-ads-transparency-scraper-examples/blob/main/notebooks/quickstart.ipynb
- https://github.com/GeminiGeorge22/publicrecords-sports-odds-api-examples/blob/main/notebooks/quickstart.ipynb
- https://github.com/GeminiGeorge22/publicrecords-spotify-play-count-scraper-examples/blob/main/notebooks/quickstart.ipynb
