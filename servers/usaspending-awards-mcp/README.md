# USAspending Awards MCP: Federal Contract & Grant Awards

US federal contract and grant awards from USAspending by agency, recipient, NAICS and period.

Hosted MCP server for the Apify Actor [`publicrecords/usaspending-awards-scraper`](https://apify.com/publicrecords/usaspending-awards-scraper), served by Apify's MCP gateway. This folder holds only the MCP Registry manifest (`server.json`); there is no separate server code. Tool calls run the Actor on your own Apify account.

## Connect

Streamable HTTP endpoint:

```
https://mcp.apify.com?tools=publicrecords/usaspending-awards-scraper
```

Sign in with Apify OAuth when your client prompts, or send `Authorization: Bearer <APIFY_TOKEN>` with your own Apify API token.

Claude Desktop / Cursor (`mcpServers` block):

```json
{
  "mcpServers": {
    "usaspending-awards-mcp": {
      "url": "https://mcp.apify.com?tools=publicrecords/usaspending-awards-scraper"
    }
  }
}
```

Registry name: `io.github.GeminiGeorge22/usaspending-awards-mcp`. Pricing and input fields: see the [Actor page](https://apify.com/publicrecords/usaspending-awards-scraper).
