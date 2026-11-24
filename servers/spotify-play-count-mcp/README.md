# Spotify Play Count MCP: Plays & Monthly Listeners

Spotify play counts for any track, album, artist or playlist, plus monthly listeners and followers.

Hosted MCP server for the Apify Actor [`publicrecords/spotify-play-count-scraper`](https://apify.com/publicrecords/spotify-play-count-scraper), served by Apify's MCP gateway. This folder holds only the MCP Registry manifest (`server.json`); there is no separate server code. Tool calls run the Actor on your own Apify account.

<!-- one-click-install:start -->
## One-click install

[![Install in VS Code](https://img.shields.io/badge/VS_Code-Install_MCP-0098FF?logo=visualstudiocode&logoColor=white)](https://insiders.vscode.dev/redirect/mcp/install?name=spotify-play-count-mcp&config=%7B%22type%22%3A%22http%22%2C%22url%22%3A%22https%3A%2F%2Fmcp.apify.com%3Ftools%3Dpublicrecords%2Fspotify-play-count-scraper%22%7D) [![Install in VS Code Insiders](https://img.shields.io/badge/VS_Code_Insiders-Install_MCP-24bfa5?logo=visualstudiocode&logoColor=white)](https://insiders.vscode.dev/redirect/mcp/install?name=spotify-play-count-mcp&config=%7B%22type%22%3A%22http%22%2C%22url%22%3A%22https%3A%2F%2Fmcp.apify.com%3Ftools%3Dpublicrecords%2Fspotify-play-count-scraper%22%7D&quality=insiders) [![Add to Cursor](https://img.shields.io/badge/Cursor-Add_MCP-000000?logo=cursor&logoColor=white)](https://cursor.com/en/install-mcp?name=spotify-play-count-mcp&config=eyJ1cmwiOiJodHRwczovL21jcC5hcGlmeS5jb20%2FdG9vbHM9cHVibGljcmVjb3Jkcy9zcG90aWZ5LXBsYXktY291bnQtc2NyYXBlciJ9)

Other clients (all use the same Streamable HTTP endpoint; sign in with Apify OAuth or send `Authorization: Bearer <APIFY_TOKEN>` with your own token):

| Client | Setup |
| --- | --- |
| Claude Code | `claude mcp add --transport http spotify-play-count-mcp "https://mcp.apify.com?tools=publicrecords/spotify-play-count-scraper"` |
| Gemini CLI | `gemini mcp add --transport http spotify-play-count-mcp "https://mcp.apify.com?tools=publicrecords/spotify-play-count-scraper"` |
| Codex CLI | `~/.codex/config.toml`: `[mcp_servers.spotify_play_count_mcp]` then `url = "https://mcp.apify.com?tools=publicrecords/spotify-play-count-scraper"` |
| Zed | `settings.json`: `"context_servers": { "spotify-play-count-mcp": { "url": "https://mcp.apify.com?tools=publicrecords/spotify-play-count-scraper" } }` |
| JetBrains AI Assistant | Settings, Tools, AI Assistant, Model Context Protocol, Add: `{"mcpServers": {"spotify-play-count-mcp": {"url": "https://mcp.apify.com?tools=publicrecords/spotify-play-count-scraper"}}}` |
| Windsurf / Devin Desktop, Cline, Roo Code, Kiro, Goose, LibreChat, Cherry Studio | Add a remote (Streamable HTTP) server with the URL above |

Also listed in the [Official MCP Registry](https://registry.modelcontextprotocol.io/v0.1/servers?search=GeminiGeorge22), which Zed and VS Code read from.
<!-- one-click-install:end -->

## Connect

Streamable HTTP endpoint:

```
https://mcp.apify.com?tools=publicrecords/spotify-play-count-scraper
```

Sign in with Apify OAuth when your client prompts, or send `Authorization: Bearer <APIFY_TOKEN>` with your own Apify API token.

Claude Desktop / Cursor (`mcpServers` block):

```json
{
  "mcpServers": {
    "spotify-play-count-mcp": {
      "url": "https://mcp.apify.com?tools=publicrecords/spotify-play-count-scraper"
    }
  }
}
```

Registry name: `io.github.GeminiGeorge22/spotify-play-count-mcp`. Pricing and input fields: see the [Actor page](https://apify.com/publicrecords/spotify-play-count-scraper).
