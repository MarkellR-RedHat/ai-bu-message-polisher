#!/bin/bash
# ------------------------------------------------------------------
# ai-bu-message-polisher installer
# Copies slash commands into ~/.claude/commands/
# ------------------------------------------------------------------

set -e

GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
BOLD='\033[1m'
NC='\033[0m'

COMMANDS_DIR="$HOME/.claude/commands"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo ""
echo -e "${BOLD}ai-bu-message-polisher${NC}"
echo -e "${BLUE}Ten slash commands for people who overthink workplace messages.${NC}"
echo ""

# Verify commands directory exists in the repo
if [ ! -d "$SCRIPT_DIR/commands" ]; then
  echo -e "${RED}Error:${NC} commands/ directory not found in $SCRIPT_DIR"
  echo "Make sure you are running this from the cloned repository."
  exit 1
fi

mkdir -p "$COMMANDS_DIR" || {
  echo -e "${RED}Error:${NC} Could not create $COMMANDS_DIR"
  exit 1
}

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

INSTALLED=0
FAILED=0

for cmd in "${COMMANDS[@]}"; do
  SRC="$SCRIPT_DIR/commands/${cmd}.md"
  if [ ! -f "$SRC" ]; then
    echo -e "  ${RED}missing${NC}  ${cmd}.md"
    FAILED=$((FAILED + 1))
    continue
  fi
  cp "$SRC" "$COMMANDS_DIR/${cmd}.md"
  echo -e "  ${GREEN}installed${NC}  /${cmd}"
  INSTALLED=$((INSTALLED + 1))
done

echo ""

if [ "$FAILED" -gt 0 ]; then
  echo -e "${YELLOW}Warning:${NC} ${FAILED} command(s) could not be installed. Check that all .md files exist in commands/."
  echo ""
fi

echo -e "${GREEN}${INSTALLED} commands installed.${NC}"
echo ""
echo -e "Restart Claude Code to pick up the new commands, then try:"
echo ""
echo -e "  ${BOLD}/polish${NC} [paste a message you have been staring at]"
echo ""
