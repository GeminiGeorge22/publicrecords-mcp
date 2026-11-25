# Audio to Text MCP: Whisper Speech to Text

Transcribe audio and video files to text with timestamps, SRT and VTT. Whisper runs inside.

Hosted MCP server for the Apify Actor [`publicrecords/audio-file-transcriber`](https://apify.com/publicrecords/audio-file-transcriber), served by Apify's MCP gateway. This folder holds only the MCP Registry manifest (`server.json`); there is no separate server code. Tool calls run the Actor on your own Apify account.

<!-- one-click-install:start -->
## One-click install

[![Install in VS Code](https://img.shields.io/badge/VS_Code-Install_MCP-0098FF?logo=visualstudiocode&logoColor=white)](https://insiders.vscode.dev/redirect/mcp/install?name=audio-file-transcriber-mcp&config=%7B%22type%22%3A%22http%22%2C%22url%22%3A%22https%3A%2F%2Fmcp.apify.com%3Ftools%3Dpublicrecords%2Faudio-file-transcriber%22%7D) [![Install in VS Code Insiders](https://img.shields.io/badge/VS_Code_Insiders-Install_MCP-24bfa5?logo=visualstudiocode&logoColor=white)](https://insiders.vscode.dev/redirect/mcp/install?name=audio-file-transcriber-mcp&config=%7B%22type%22%3A%22http%22%2C%22url%22%3A%22https%3A%2F%2Fmcp.apify.com%3Ftools%3Dpublicrecords%2Faudio-file-transcriber%22%7D&quality=insiders) [![Add to Cursor](https://img.shields.io/badge/Cursor-Add_MCP-000000?logo=cursor&logoColor=white)](https://cursor.com/en/install-mcp?name=audio-file-transcriber-mcp&config=eyJ1cmwiOiJodHRwczovL21jcC5hcGlmeS5jb20/dG9vbHM9cHVibGljcmVjb3Jkcy9hdWRpby1maWxlLXRyYW5zY3JpYmVyIn0=)

Other clients (all use the same Streamable HTTP endpoint; sign in with Apify OAuth or send `Authorization: Bearer <APIFY_TOKEN>` with your own token):

| Client | Setup |
| --- | --- |
| Claude Code | `claude mcp add --transport http audio-file-transcriber-mcp "https://mcp.apify.com?tools=publicrecords/audio-file-transcriber"` |
| Gemini CLI | `gemini mcp add --transport http audio-file-transcriber-mcp "https://mcp.apify.com?tools=publicrecords/audio-file-transcriber"` |
| Codex CLI | `~/.codex/config.toml`: `[mcp_servers.audio_file_transcriber_mcp]` then `url = "https://mcp.apify.com?tools=publicrecords/audio-file-transcriber"` |
| Zed | `settings.json`: `"context_servers": { "audio-file-transcriber-mcp": { "url": "https://mcp.apify.com?tools=publicrecords/audio-file-transcriber" } }` |
| JetBrains AI Assistant | Settings, Tools, AI Assistant, Model Context Protocol, Add: `{"mcpServers": {"audio-file-transcriber-mcp": {"url": "https://mcp.apify.com?tools=publicrecords/audio-file-transcriber"}}}` |
| Windsurf / Devin Desktop, Cline, Roo Code, Kiro, Goose, LibreChat, Cherry Studio | Add a remote (Streamable HTTP) server with the URL above |

Also listed in the [Official MCP Registry](https://registry.modelcontextprotocol.io/v0.1/servers?search=GeminiGeorge22), which Zed and VS Code read from.
<!-- one-click-install:end -->

## Connect

Streamable HTTP endpoint:

```
https://mcp.apify.com?tools=publicrecords/audio-file-transcriber
```

Sign in with Apify OAuth when your client prompts, or send `Authorization: Bearer <APIFY_TOKEN>` with your own Apify API token.

Claude Desktop / Cursor (`mcpServers` block):

```json
{
  "mcpServers": {
    "audio-file-transcriber-mcp": {
      "url": "https://mcp.apify.com?tools=publicrecords/audio-file-transcriber"
    }
  }
}
```

Registry name: `io.github.GeminiGeorge22/audio-file-transcriber-mcp`. Pricing and input fields: see the [Actor page](https://apify.com/publicrecords/audio-file-transcriber).
