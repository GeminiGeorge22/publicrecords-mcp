# Calibration Ledger MCP: Forecast Track Records (beta)

An organization's forecast track record (IMF, OECD, Fed, ECB SPF, listed issuers): errors and bias.

Hosted MCP server for the Apify Actor [`publicrecords/calibration-ledger`](https://apify.com/publicrecords/calibration-ledger), served by Apify's MCP gateway. This folder holds only the MCP Registry manifest (`server.json`); there is no separate server code. Tool calls run the Actor on your own Apify account.

## Connect

Streamable HTTP endpoint:

```
https://mcp.apify.com?tools=publicrecords/calibration-ledger
```

Sign in with Apify OAuth when your client prompts, or send `Authorization: Bearer <APIFY_TOKEN>` with your own Apify API token.

Claude Desktop / Cursor (`mcpServers` block):

```json
{
  "mcpServers": {
    "calibration-ledger-mcp": {
      "url": "https://mcp.apify.com?tools=publicrecords/calibration-ledger"
    }
  }
}
```

Registry name: `io.github.GeminiGeorge22/calibration-ledger-mcp`. Pricing and input fields: see the [Actor page](https://apify.com/publicrecords/calibration-ledger).
