# Email a weekday Grants.gov opportunity digest

Use this text in the n8n Creator portal if the form still asks for it. The hub currently says the portal generates the title and description automatically; keep this file as the intended copy.

## Title

Email a weekday Grants.gov opportunity digest

## Description

Each weekday, search official Grants.gov opportunities for your keyword and agency, skip grants you already received, rank the rest by close date, and email one HTML digest. Grant writers, university research offices and nonprofits can watch newly posted or soon-closing federal funding without an LLM or a spreadsheet. The workflow calls the Public Records Grants.gov Actor (`publicrecords/grants-gov-scraper`) with your own Apify credential, so runs bill to your Apify account. A failure branch emails you if the Apify request does not succeed.

## Categories

- Finance
- Other

(n8n library categories as listed on the Creator portal / template library: Finance is the closest fit for funding opportunities. Select a second category only if the form allows it.)

## Why this template (library gap)

The n8n library already has a large Apify grants-and-awards scorer that uses an LLM, Slack send-and-wait and Google Sheets (template 21864, a different author and Actor account) and a SpecStream grant digest (template 21571). This workflow is a simpler, official-source Grants.gov email digest: no LLM, one Config node, Header Auth on the caller's Apify account, and a quiet no-op when nothing is new.

## Store and Actor

- Actor: `publicrecords/grants-gov-scraper`
- Store: https://apify.com/publicrecords/grants-gov-scraper
- Author: Public Records
- Sync endpoint used: `POST https://api.apify.com/v2/acts/publicrecords~grants-gov-scraper/run-sync-get-dataset-items`

## Credentials the importer must add

1. HTTP Header Auth: header name `Authorization`, value `Bearer <APIFY_API_TOKEN>` from the importer's Apify account. Attach it to **Fetch open grants from Grants.gov**.
2. Gmail OAuth: attach the same Gmail account to **Send grant digest email** and **Send failure alert**.

Do not paste tokens into the workflow. Replace `YOUR_EMAIL@example.com` in **Set digest options** before activating.

## New-creator submission rule

Submit this one template and wait for approval before sending another.
