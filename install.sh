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
cp "$SCRIPT_DIR/commands/read-the-room.md" "$COMMANDS_DIR/read-the-room.md"
cp "$SCRIPT_DIR/commands/tone-shift.md" "$COMMANDS_DIR/tone-shift.md"
cp "$SCRIPT_DIR/commands/bad-news.md" "$COMMANDS_DIR/bad-news.md"
cp "$SCRIPT_DIR/commands/cross-cultural.md" "$COMMANDS_DIR/cross-cultural.md"

echo -e "${GREEN}Installed commands:${NC}"
echo ""
echo -e "  ${BOLD}Core:${NC}"
echo -e "  ${BOLD}/polish${NC}              Polish a rough message (tone flags: casual, formal, executive, urgent, technical)"
echo -e "  ${BOLD}/shorten${NC}             Ruthlessly cut a message by 50%+ while keeping all key points"
echo -e "  ${BOLD}/tone-shift${NC}          Rewrite a message in a completely different tone (assertive, diplomatic, etc.)"
echo ""
echo -e "  ${BOLD}Respond:${NC}"
echo -e "  ${BOLD}/read-the-room${NC}       Decode what someone's message actually means and draft response options"
echo -e "  ${BOLD}/decline-politely${NC}    Draft a clear, kind decline that actually says no"
echo -e "  ${BOLD}/follow-up${NC}           Write a follow-up without being passive-aggressive"
echo -e "  ${BOLD}/bad-news${NC}            Deliver bad news at three directness levels (BIFF framework)"
echo ""
echo -e "  ${BOLD}Structure:${NC}"
echo -e "  ${BOLD}/escalation${NC}          Format an issue as a professional escalation email"
echo -e "  ${BOLD}/thread-summary${NC}      Summarize a Slack/email thread into decisions and action items"
echo -e "  ${BOLD}/cross-cultural${NC}      Adapt a message for a different communication culture or region"
echo ""
echo -e "${GREEN}Done.${NC} Restart Claude Code to pick up the new commands."
echo ""
echo -e "${YELLOW}Tips:${NC}"
echo -e "  - Use ${BOLD}tone:executive${NC} or ${BOLD}tone:casual${NC} with /polish to shift formality"
echo -e "  - Paste a message someone sent you into ${BOLD}/read-the-room${NC} to decode the subtext"
echo -e "  - Use ${BOLD}/bad-news${NC} to get three versions of a tough message at different directness levels"
echo -e "  - Chain commands: polish first, then shorten if it's still too long"
echo -e "  - All commands preserve your voice. The output should still sound like you."
echo ""
echo -e "${YELLOW}Reference:${NC}"
echo -e "  Communication frameworks guide: ${BOLD}reference/communication-frameworks.md${NC}"
echo -e "  Covers BLUF, SCQA, Minto Pyramid, and BIFF with bad-to-good rewrites."
echo ""
