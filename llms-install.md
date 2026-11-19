# Installing Skillry MCP in Cline

This guide is designed for AI coding assistants (including Cline) to configure the Skillry MCP server cleanly without extra user friction.

## Prerequisites

- Node.js 22 or later (`node -v`)

## Step 1: Add Skillry to Cline's MCP Settings

Add the following entry under `mcpServers` in Cline's `cline_mcp_settings.json`:

```json
{
  "mcpServers": {
    "skillry": {
      "command": "npx",
      "args": ["--yes", "skillry-cli@latest", "mcp"],
      "disabled": false,
      "autoApprove": []
    }
  }
}
```

## Step 2: Verify the Connection

After saving `cline_mcp_settings.json`, verify that the `skillry` server exposes 12 tools (including `search_skills` and `get_skill`).

You can run a zero-auth smoke check immediately by calling `search_skills` with a query such as `"landing page"` or `"slides"`.

## Step 3: Optional Account Connection (Only When Installing Skills)

- Public catalog discovery (`search_skills`, `get_skill`) works without signing in and requires no API key or environment variables.
- When the user wants to download or install a Skill, call `connect_account` to start browser OAuth sign-in, then confirm with `connection_status`.
