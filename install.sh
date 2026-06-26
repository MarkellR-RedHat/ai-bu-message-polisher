#!/bin/bash
# Install ai-bu-message-polisher commands into Claude Code

set -e

COMMANDS_DIR="$HOME/.claude/commands"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing message polisher commands..."

mkdir -p "$COMMANDS_DIR"

cp "$SCRIPT_DIR/commands/polish.md" "$COMMANDS_DIR/polish.md"
cp "$SCRIPT_DIR/commands/shorten.md" "$COMMANDS_DIR/shorten.md"
cp "$SCRIPT_DIR/commands/escalation.md" "$COMMANDS_DIR/escalation.md"

echo ""
echo "Installed commands:"
echo "  /polish      - Polish a rough message (supports tone flags: formal, casual, executive, technical)"
echo "  /shorten     - Cut a message to half its length"
echo "  /escalation  - Format an issue as a professional escalation email"
echo ""
echo "Done. Restart Claude Code to pick up the new commands."
