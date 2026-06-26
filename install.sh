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
echo -e "${BLUE}Installing slash commands...${NC}"
echo ""

mkdir -p "$COMMANDS_DIR"

# Count commands for progress
COMMAND_COUNT=0
COMMANDS=(
  "polish"
  "shorten"
  "tone-shift"
  "read-the-room"
  "decline-politely"
  "follow-up"
  "bad-news"
  "escalation"
  "thread-summary"
  "cross-cultural"
)

for cmd in "${COMMANDS[@]}"; do
  cp "$SCRIPT_DIR/commands/${cmd}.md" "$COMMANDS_DIR/${cmd}.md"
  COMMAND_COUNT=$((COMMAND_COUNT + 1))
done

echo -e "${GREEN}Installed ${COMMAND_COUNT} commands:${NC}"
echo ""
echo -e "  ${BOLD}Core -- polish your own messages:${NC}"
echo -e "  ${BOLD}/polish${NC}              Make a rough message land right (tone flags: casual, formal, executive, urgent, technical)"
echo -e "  ${BOLD}/shorten${NC}             Cut 50%+ of the words, keep every decision and deadline"
echo -e "  ${BOLD}/tone-shift${NC}          Full rewrite in a different tone (assertive, diplomatic, casual, executive, empathetic, technical)"
echo ""
echo -e "  ${BOLD}Respond -- handle messages from others:${NC}"
echo -e "  ${BOLD}/read-the-room${NC}       Decode what someone's message actually means, get response options"
echo -e "  ${BOLD}/decline-politely${NC}    Say no clearly without hedging or fake alternatives"
echo -e "  ${BOLD}/follow-up${NC}           Follow up without being passive-aggressive"
echo -e "  ${BOLD}/bad-news${NC}            Deliver bad news at three directness levels (BIFF framework)"
echo ""
echo -e "  ${BOLD}Structure -- organize complex communication:${NC}"
echo -e "  ${BOLD}/escalation${NC}          Turn a problem into a structured escalation email that gets action"
echo -e "  ${BOLD}/thread-summary${NC}      Distill a long thread into decisions, owners, open questions"
echo -e "  ${BOLD}/cross-cultural${NC}      Adapt a message for a different communication culture"
echo ""
echo -e "${GREEN}Done.${NC} Restart Claude Code to pick up the new commands."
echo ""
echo -e "${YELLOW}Quick start:${NC}"
echo -e "  Staring at a draft?              ${BOLD}/polish${NC} [paste your message]"
echo -e "  Confused by someone's message?   ${BOLD}/read-the-room${NC} [paste their message]"
echo -e "  Need to say no?                  ${BOLD}/decline-politely${NC} [describe the situation]"
echo -e "  Delivering bad news?             ${BOLD}/bad-news${NC} [describe what happened]"
echo -e "  Message too long?                ${BOLD}/shorten${NC} [paste your message]"
echo ""
echo -e "${YELLOW}Tips:${NC}"
echo -e "  - Use ${BOLD}tone:executive${NC} or ${BOLD}tone:casual${NC} with /polish to shift formality"
echo -e "  - Output sounds like you on a good day, not like a different person"
echo -e "  - Chain commands: polish first, then shorten if it's still too long"
echo ""
echo -e "${YELLOW}Reference:${NC}"
echo -e "  Communication frameworks guide: ${BOLD}reference/communication-frameworks.md${NC}"
echo -e "  Covers BLUF, SCQA, Minto Pyramid, and BIFF with bad-to-good rewrites."
echo ""
