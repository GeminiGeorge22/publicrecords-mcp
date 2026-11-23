# Etsy Shop Daily Sales MCP

Daily, 7-day and 28-day sales for Etsy shops, measured from each shop's public sales counter.

Hosted MCP server for the Apify Actor [`publicrecords/etsy-shop-velocity`](https://apify.com/publicrecords/etsy-shop-velocity), served by Apify's MCP gateway. This folder holds only the MCP Registry manifest (`server.json`); there is no separate server code. Tool calls run the Actor on your own Apify account.

## Connect

Streamable HTTP endpoint:

```
https://mcp.apify.com?tools=publicrecords/etsy-shop-velocity
```

Sign in with Apify OAuth when your client prompts, or send `Authorization: Bearer <APIFY_TOKEN>` with your own Apify API token.

Claude Desktop / Cursor (`mcpServers` block):

```json
{
  "mcpServers": {
    "etsy-shop-sales-mcp": {
      "url": "https://mcp.apify.com?tools=publicrecords/etsy-shop-velocity"
    }
  }
}
```

Registry name: `io.github.GeminiGeorge22/etsy-shop-sales-mcp`. Pricing and input fields: see the [Actor page](https://apify.com/publicrecords/etsy-shop-velocity).
