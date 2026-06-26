#!/bin/bash
# Install ai-bu-message-polisher commands into Claude Code

set -e

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
BOLD='\033[1m'
NC='\033[0m' # No Color

COMMANDS_DIR="$HOME/.claude/commands"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo ""
echo -e "${BOLD}ai-bu-message-polisher${NC}"
echo -e "${BLUE}Installing commands into Claude Code...${NC}"
echo ""

mkdir -p "$COMMANDS_DIR"

cp "$SCRIPT_DIR/commands/polish.md" "$COMMANDS_DIR/polish.md"
cp "$SCRIPT_DIR/commands/shorten.md" "$COMMANDS_DIR/shorten.md"
cp "$SCRIPT_DIR/commands/escalation.md" "$COMMANDS_DIR/escalation.md"
cp "$SCRIPT_DIR/commands/thread-summary.md" "$COMMANDS_DIR/thread-summary.md"
cp "$SCRIPT_DIR/commands/decline-politely.md" "$COMMANDS_DIR/decline-politely.md"
cp "$SCRIPT_DIR/commands/follow-up.md" "$COMMANDS_DIR/follow-up.md"

echo -e "${GREEN}Installed commands:${NC}"
echo -e "  ${BOLD}/polish${NC}             Polish a rough message (supports tone flags: formal, casual, executive, technical)"
echo -e "  ${BOLD}/shorten${NC}            Cut a message to half its length"
echo -e "  ${BOLD}/escalation${NC}         Format an issue as a professional escalation email"
echo -e "  ${BOLD}/thread-summary${NC}     Summarize a Slack or email thread into decisions and action items"
echo -e "  ${BOLD}/decline-politely${NC}   Draft a kind, professional decline"
echo -e "  ${BOLD}/follow-up${NC}          Write a professional nudge for unanswered messages"
echo ""
echo -e "${GREEN}Done.${NC} Restart Claude Code to pick up the new commands."
echo ""
echo -e "${YELLOW}Tips:${NC}"
echo -e "  - Use ${BOLD}tone:executive${NC} or ${BOLD}tone:casual${NC} with /polish to shift formality"
echo -e "  - Paste a full Slack thread into ${BOLD}/thread-summary${NC} to get decisions + action items"
echo -e "  - Chain commands: polish first, then shorten if it is still too long"
echo -e "  - All commands preserve your voice. The output should still sound like you."
echo ""
