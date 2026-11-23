# Grants.gov MCP: Open Federal Grants

Open US federal grants from Grants.gov: agency, deadline, eligibility and source link.

Hosted MCP server for the Apify Actor [`publicrecords/grants-gov-scraper`](https://apify.com/publicrecords/grants-gov-scraper), served by Apify's MCP gateway. This folder holds only the MCP Registry manifest (`server.json`); there is no separate server code. Tool calls run the Actor on your own Apify account.

## Connect

Streamable HTTP endpoint:

```
https://mcp.apify.com?tools=publicrecords/grants-gov-scraper
```

Sign in with Apify OAuth when your client prompts, or send `Authorization: Bearer <APIFY_TOKEN>` with your own Apify API token.

Claude Desktop / Cursor (`mcpServers` block):

```json
{
  "mcpServers": {
    "grants-gov-mcp": {
      "url": "https://mcp.apify.com?tools=publicrecords/grants-gov-scraper"
    }
  }
}
```

Registry name: `io.github.GeminiGeorge22/grants-gov-mcp`. Pricing and input fields: see the [Actor page](https://apify.com/publicrecords/grants-gov-scraper).
