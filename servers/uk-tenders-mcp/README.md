# UK Tenders MCP: Find a Tender & Contracts Finder

UK government tenders from Find a Tender and Contracts Finder: buyer, value, deadline, source link.

Hosted MCP server for the Apify Actor [`publicrecords/uk-find-a-tender-scraper`](https://apify.com/publicrecords/uk-find-a-tender-scraper), served by Apify's MCP gateway. This folder holds only the MCP Registry manifest (`server.json`); there is no separate server code. Tool calls run the Actor on your own Apify account.

## Connect

Streamable HTTP endpoint:

```
https://mcp.apify.com?tools=publicrecords/uk-find-a-tender-scraper
```

Sign in with Apify OAuth when your client prompts, or send `Authorization: Bearer <APIFY_TOKEN>` with your own Apify API token.

Claude Desktop / Cursor (`mcpServers` block):

```json
{
  "mcpServers": {
    "uk-tenders-mcp": {
      "url": "https://mcp.apify.com?tools=publicrecords/uk-find-a-tender-scraper"
    }
  }
}
```

Registry name: `io.github.GeminiGeorge22/uk-tenders-mcp`. Pricing and input fields: see the [Actor page](https://apify.com/publicrecords/uk-find-a-tender-scraper).
