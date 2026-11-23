# EU TED Tenders MCP: Daily Procurement Notices

EU procurement notices from TED (Tenders Electronic Daily): buyer, CPV, value, deadline, link.

Hosted MCP server for the Apify Actor [`publicrecords/eu-ted-notices-scraper`](https://apify.com/publicrecords/eu-ted-notices-scraper), served by Apify's MCP gateway. This folder holds only the MCP Registry manifest (`server.json`); there is no separate server code. Tool calls run the Actor on your own Apify account.

## Connect

Streamable HTTP endpoint:

```
https://mcp.apify.com?tools=publicrecords/eu-ted-notices-scraper
```

Sign in with Apify OAuth when your client prompts, or send `Authorization: Bearer <APIFY_TOKEN>` with your own Apify API token.

Claude Desktop / Cursor (`mcpServers` block):

```json
{
  "mcpServers": {
    "eu-ted-tenders-mcp": {
      "url": "https://mcp.apify.com?tools=publicrecords/eu-ted-notices-scraper"
    }
  }
}
```

Registry name: `io.github.GeminiGeorge22/eu-ted-tenders-mcp`. Pricing and input fields: see the [Actor page](https://apify.com/publicrecords/eu-ted-notices-scraper).
