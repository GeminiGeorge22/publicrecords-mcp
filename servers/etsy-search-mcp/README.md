# Etsy Search MCP: Listings, Prices & Best Sellers

Etsy search results by keyword or category: price, rating, reviews, Bestseller badge, ad flag, rank.

Hosted MCP server for the Apify Actor [`publicrecords/etsy-search-scraper`](https://apify.com/publicrecords/etsy-search-scraper), served by Apify's MCP gateway. This folder holds only the MCP Registry manifest (`server.json`); there is no separate server code. Tool calls run the Actor on your own Apify account.

## Connect

Streamable HTTP endpoint:

```
https://mcp.apify.com?tools=publicrecords/etsy-search-scraper
```

Sign in with Apify OAuth when your client prompts, or send `Authorization: Bearer <APIFY_TOKEN>` with your own Apify API token.

Claude Desktop / Cursor (`mcpServers` block):

```json
{
  "mcpServers": {
    "etsy-search-mcp": {
      "url": "https://mcp.apify.com?tools=publicrecords/etsy-search-scraper"
    }
  }
}
```

Registry name: `io.github.GeminiGeorge22/etsy-search-mcp`. Pricing and input fields: see the [Actor page](https://apify.com/publicrecords/etsy-search-scraper).
