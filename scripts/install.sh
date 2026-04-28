#!/usr/bin/env bash
# Claude Code Skills Starter - Unix Installer
# Run: curl -fsSL https://raw.githubusercontent.com/123456yy384/claude-code-skills-starter/main/scripts/install.sh | bash

set -e

SKILLS_DIR="$HOME/.claude/skills"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_SKILLS="$SCRIPT_DIR/../skills"

echo "========================================"
echo " Claude Code Skills Starter Pack"
echo "========================================"
echo ""

# Create skills directory if needed
mkdir -p "$SKILLS_DIR"
echo "[OK] Skills directory: $SKILLS_DIR"

# Install pm-team
if [ -d "$SOURCE_SKILLS/pm-team" ]; then
    rm -rf "$SKILLS_DIR/pm-team"
    cp -r "$SOURCE_SKILLS/pm-team" "$SKILLS_DIR/pm-team"
    echo "[OK] Installed pm-team"
else
    echo "[SKIP] pm-team not found in source"
fi

# Install snapview
if [ -d "$SOURCE_SKILLS/snapview" ]; then
    rm -rf "$SKILLS_DIR/snapview"
    cp -r "$SOURCE_SKILLS/snapview" "$SKILLS_DIR/snapview"
    echo "[OK] Installed snapview"
else
    echo "[SKIP] snapview not found in source"
fi

echo ""
echo "Done! 2 original skills installed."
echo ""
echo "Next steps:"
echo "  1. Restart Claude Code (or start a new session)"
echo "  2. Type /pm-team to start project manager mode"
echo "  3. Type /snapview to capture a screenshot"
echo "  4. Browse the full 54-skill catalog at:"
echo "     https://github.com/123456yy384/claude-code-skills-starter"
echo ""
