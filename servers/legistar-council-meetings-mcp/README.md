# City Council Meetings MCP (Legistar)

City council meetings, agenda items and documents for any city on Legistar, with source links.

Hosted MCP server for the Apify Actor [`publicrecords/legistar-meetings-scraper`](https://apify.com/publicrecords/legistar-meetings-scraper), served by Apify's MCP gateway. This folder holds only the MCP Registry manifest (`server.json`); there is no separate server code. Tool calls run the Actor on your own Apify account.

## Connect

Streamable HTTP endpoint:

```
https://mcp.apify.com?tools=publicrecords/legistar-meetings-scraper
```

Sign in with Apify OAuth when your client prompts, or send `Authorization: Bearer <APIFY_TOKEN>` with your own Apify API token.

Claude Desktop / Cursor (`mcpServers` block):

```json
{
  "mcpServers": {
    "legistar-council-meetings-mcp": {
      "url": "https://mcp.apify.com?tools=publicrecords/legistar-meetings-scraper"
    }
  }
}
```

Registry name: `io.github.GeminiGeorge22/legistar-council-meetings-mcp`. Pricing and input fields: see the [Actor page](https://apify.com/publicrecords/legistar-meetings-scraper).
