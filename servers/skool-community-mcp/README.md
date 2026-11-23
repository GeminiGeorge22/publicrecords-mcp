# Skool Community Scraper

Search Skool communities by keyword. Members, price, rating and estimated monthly revenue for each, plus daily growth tracking.

Hosted MCP server for the Apify Actor [`publicrecords/skool-community-growth-tracker`](https://apify.com/publicrecords/skool-community-growth-tracker), served by Apify's MCP gateway. This folder holds only the MCP Registry manifest (`server.json`); there is no separate server code. Tool calls run the Actor on your own Apify account.

## Connect

Streamable HTTP endpoint:

```
https://mcp.apify.com?tools=publicrecords/skool-community-growth-tracker
```

Sign in with Apify OAuth when your client prompts, or send `Authorization: Bearer <APIFY_TOKEN>` with your own Apify API token.

Claude Desktop / Cursor (`mcpServers` block):

```json
{
  "mcpServers": {
    "skool-community-mcp": {
      "url": "https://mcp.apify.com?tools=publicrecords/skool-community-growth-tracker"
    }
  }
}
```

Registry name: `io.github.GeminiGeorge22/skool-community-mcp`. Pricing and input fields: see the [Actor page](https://apify.com/publicrecords/skool-community-growth-tracker).
