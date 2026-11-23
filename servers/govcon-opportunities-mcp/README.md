# Federal Contracts MCP: SAM.gov + Grants.gov

New US federal contract and grant notices from SAM.gov and Grants.gov in one feed, with links.

Hosted MCP server for the Apify Actor [`publicrecords/govcon-opportunity-feed`](https://apify.com/publicrecords/govcon-opportunity-feed), served by Apify's MCP gateway. This folder holds only the MCP Registry manifest (`server.json`); there is no separate server code. Tool calls run the Actor on your own Apify account.

## Connect

Streamable HTTP endpoint:

```
https://mcp.apify.com?tools=publicrecords/govcon-opportunity-feed
```

Sign in with Apify OAuth when your client prompts, or send `Authorization: Bearer <APIFY_TOKEN>` with your own Apify API token.

Claude Desktop / Cursor (`mcpServers` block):

```json
{
  "mcpServers": {
    "govcon-opportunities-mcp": {
      "url": "https://mcp.apify.com?tools=publicrecords/govcon-opportunity-feed"
    }
  }
}
```

Registry name: `io.github.GeminiGeorge22/govcon-opportunities-mcp`. Pricing and input fields: see the [Actor page](https://apify.com/publicrecords/govcon-opportunity-feed).
