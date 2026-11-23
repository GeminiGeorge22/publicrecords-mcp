# Ashby Jobs MCP: New Postings Since Any Date

New job postings from any Ashby job board since a date or window (24h, 7d, 30d), with full details.

Hosted MCP server for the Apify Actor [`publicrecords/ashby-jobs-scraper`](https://apify.com/publicrecords/ashby-jobs-scraper), served by Apify's MCP gateway. This folder holds only the MCP Registry manifest (`server.json`); there is no separate server code. Tool calls run the Actor on your own Apify account.

## Connect

Streamable HTTP endpoint:

```
https://mcp.apify.com?tools=publicrecords/ashby-jobs-scraper
```

Sign in with Apify OAuth when your client prompts, or send `Authorization: Bearer <APIFY_TOKEN>` with your own Apify API token.

Claude Desktop / Cursor (`mcpServers` block):

```json
{
  "mcpServers": {
    "ashby-jobs-mcp": {
      "url": "https://mcp.apify.com?tools=publicrecords/ashby-jobs-scraper"
    }
  }
}
```

Registry name: `io.github.GeminiGeorge22/ashby-jobs-mcp`. Pricing and input fields: see the [Actor page](https://apify.com/publicrecords/ashby-jobs-scraper).
