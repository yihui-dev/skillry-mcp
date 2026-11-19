# Skillry MCP

Search, preview, and install curated creative Agent Skills (slides, websites, images, launch videos) directly inside Claude Code, Codex, Cursor, VS Code, Gemini CLI, and Claude Desktop.

- **Official MCP Page**: https://skillry.dev/mcp
- **Tool Reference Docs**: https://skillry.dev/learn/reference/skillry-mcp
- **npm Package**: [`skillry-cli`](https://www.npmjs.com/package/skillry-cli)
- **Claude Desktop Extension (`.mcpb`)**: https://skillry.dev/downloads/skillry.mcpb
- **Transport**: Local `stdio` (Node.js 22+)

## Quick Start

### MCP JSON Config (Cursor, VS Code, Codex, Claude Desktop, Gemini CLI)

```json
{
  "mcpServers": {
    "skillry": {
      "command": "npx",
      "args": ["--yes", "skillry-cli@latest", "mcp"]
    }
  }
}
```

### Claude Code CLI

```bash
claude mcp add skillry -- npx --yes skillry-cli@latest mcp
```

## Authentication

- **Public catalog discovery** (`search_skills`, `get_skill`) works without signing in.
- **Installing & updating Skills** uses browser OAuth authorization via `connect_account` / `connection_status` (no Skillry API key required).

## Available Tools (12)

| Tool | Description |
| :--- | :--- |
| `search_skills` | Search curated creative Agent Skills by output type, constraints, or keywords |
| `get_skill` | Inspect detailed Skill specs, previews, compatibility, and access requirements |
| `connect_account` | Start browser OAuth flow to connect a Skillry account |
| `connection_status` | Poll and verify OAuth account connection state |
| `account_status` | Check current connected Skillry account and plan status |
| `disconnect_account` | Disconnect the linked local Skillry session |
| `get_skill_access` | Verify entitlement and download access for a specific Skill |
| `download_skill` | Download a verified Skill package archive |
| `install_skill` | Install a Skill directly into supported local agent directories |
| `list_installed_skills` | List locally installed Skillry Skills and versions |
| `check_updates` | Check for newer versions of installed Skills |
| `update_skill` | Upgrade an installed Skill to the latest release |

## Support

- Documentation: https://skillry.dev/learn/reference/skillry-mcp
- Support: support@skillry.dev

## License

MIT
