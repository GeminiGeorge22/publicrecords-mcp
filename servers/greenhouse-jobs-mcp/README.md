# Greenhouse Jobs MCP: New Postings Since Any Date

New job postings from any Greenhouse job board since a date or window (24h, 7d, 30d).

Hosted MCP server for the Apify Actor [`publicrecords/greenhouse-jobs-scraper`](https://apify.com/publicrecords/greenhouse-jobs-scraper), served by Apify's MCP gateway. This folder holds only the MCP Registry manifest (`server.json`); there is no separate server code. Tool calls run the Actor on your own Apify account.

## Connect

Streamable HTTP endpoint:

```
https://mcp.apify.com?tools=publicrecords/greenhouse-jobs-scraper
```

Sign in with Apify OAuth when your client prompts, or send `Authorization: Bearer <APIFY_TOKEN>` with your own Apify API token.

Claude Desktop / Cursor (`mcpServers` block):

```json
{
  "mcpServers": {
    "greenhouse-jobs-mcp": {
      "url": "https://mcp.apify.com?tools=publicrecords/greenhouse-jobs-scraper"
    }
  }
}
```

Registry name: `io.github.GeminiGeorge22/greenhouse-jobs-mcp`. Pricing and input fields: see the [Actor page](https://apify.com/publicrecords/greenhouse-jobs-scraper).
