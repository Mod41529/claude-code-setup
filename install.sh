#!/bin/bash
# Claude Code 환경 세팅 — 새 디바이스에서 한 번만 실행
# 사용법: ./install.sh

set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
CLAUDE_DIR="$HOME/.claude"

echo "Claude Code 환경 설치 시작..."

# ~/.claude 디렉토리 생성
mkdir -p "$CLAUDE_DIR/commands"

# settings.json 심링크
if [ -f "$CLAUDE_DIR/settings.json" ] && [ ! -L "$CLAUDE_DIR/settings.json" ]; then
  echo "  기존 settings.json 백업 → settings.json.bak"
  mv "$CLAUDE_DIR/settings.json" "$CLAUDE_DIR/settings.json.bak"
fi
ln -sf "$REPO_DIR/claude/settings.json" "$CLAUDE_DIR/settings.json"
echo "  ✓ settings.json"

# commands/ 심링크 (파일 단위)
for f in "$REPO_DIR/claude/commands/"*.md; do
  name="$(basename "$f")"
  ln -sf "$f" "$CLAUDE_DIR/commands/$name"
  echo "  ✓ commands/$name"
done

echo ""
echo "완료. 새 커맨드 추가 시 ~/projects/claude-code-setup/claude/commands/ 에 추가 후 push."
