# Sports Odds API MCP (BetRivers, Unibet & 22 more books)

Live odds from 24 Kambi-powered sportsbooks in one call, with the best price per outcome.

Hosted MCP server for the Apify Actor [`publicrecords/sports-odds-api`](https://apify.com/publicrecords/sports-odds-api), served by Apify's MCP gateway. This folder holds only the MCP Registry manifest (`server.json`); there is no separate server code. Tool calls run the Actor on your own Apify account.

<!-- one-click-install:start -->
## One-click install

[![Install in VS Code](https://img.shields.io/badge/VS_Code-Install_MCP-0098FF?logo=visualstudiocode&logoColor=white)](https://insiders.vscode.dev/redirect/mcp/install?name=sports-odds-api&config=%7B%22type%22%3A%22http%22%2C%22url%22%3A%22https%3A%2F%2Fmcp.apify.com%3Ftools%3Dpublicrecords%2Fsports-odds-api%22%7D) [![Install in VS Code Insiders](https://img.shields.io/badge/VS_Code_Insiders-Install_MCP-24bfa5?logo=visualstudiocode&logoColor=white)](https://insiders.vscode.dev/redirect/mcp/install?name=sports-odds-api&config=%7B%22type%22%3A%22http%22%2C%22url%22%3A%22https%3A%2F%2Fmcp.apify.com%3Ftools%3Dpublicrecords%2Fsports-odds-api%22%7D&quality=insiders) [![Add to Cursor](https://img.shields.io/badge/Cursor-Add_MCP-000000?logo=cursor&logoColor=white)](https://cursor.com/en/install-mcp?name=sports-odds-api&config=eyJ1cmwiOiJodHRwczovL21jcC5hcGlmeS5jb20%2FdG9vbHM9cHVibGljcmVjb3Jkcy9zcG9ydHMtb2Rkcy1hcGkifQ%3D%3D)

Other clients (all use the same Streamable HTTP endpoint; sign in with Apify OAuth or send `Authorization: Bearer <APIFY_TOKEN>` with your own token):

| Client | Setup |
| --- | --- |
| Claude Code | `claude mcp add --transport http sports-odds-api "https://mcp.apify.com?tools=publicrecords/sports-odds-api"` |
| Gemini CLI | `gemini mcp add --transport http sports-odds-api "https://mcp.apify.com?tools=publicrecords/sports-odds-api"` |
| Codex CLI | `~/.codex/config.toml`: `[mcp_servers.sports_odds_api]` then `url = "https://mcp.apify.com?tools=publicrecords/sports-odds-api"` |
| Zed | `settings.json`: `"context_servers": { "sports-odds-api": { "url": "https://mcp.apify.com?tools=publicrecords/sports-odds-api" } }` |
| JetBrains AI Assistant | Settings, Tools, AI Assistant, Model Context Protocol, Add: `{"mcpServers": {"sports-odds-api": {"url": "https://mcp.apify.com?tools=publicrecords/sports-odds-api"}}}` |
| Windsurf / Devin Desktop, Cline, Roo Code, Kiro, Goose, LibreChat, Cherry Studio | Add a remote (Streamable HTTP) server with the URL above |

Also listed in the [Official MCP Registry](https://registry.modelcontextprotocol.io/v0.1/servers?search=GeminiGeorge22), which Zed and VS Code read from.
<!-- one-click-install:end -->

## Connect

Streamable HTTP endpoint:

```
https://mcp.apify.com?tools=publicrecords/sports-odds-api
```

Sign in with Apify OAuth when your client prompts, or send `Authorization: Bearer <APIFY_TOKEN>` with your own Apify API token.

Claude Desktop / Cursor (`mcpServers` block):

```json
{
  "mcpServers": {
    "sports-odds-api": {
      "url": "https://mcp.apify.com?tools=publicrecords/sports-odds-api"
    }
  }
}
```

Registry name: `io.github.GeminiGeorge22/sports-odds-api`. Pricing and input fields: see the [Actor page](https://apify.com/publicrecords/sports-odds-api).
