# Claude Code Setup Guide

Mac에서 Claude Code 개발 환경을 빠르게 세팅하는 가이드입니다.

---

## 목차

1. [사전 준비](#1-사전-준비)
2. [Homebrew 설치](#2-homebrew-설치)
3. [필수 도구 설치](#3-필수-도구-설치)
4. [Ghostty 터미널 설치 및 설정](#4-ghostty-터미널-설치-및-설정)
5. [Claude Code 설치](#5-claude-code-설치)
6. [Claude Code 설정](#6-claude-code-설정)

---

## 1. 사전 준비

- macOS 13 (Ventura) 이상
- 인터넷 연결

---

## 2. Homebrew 설치

Homebrew가 없다면 먼저 설치합니다.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Apple Silicon(M1~) 사용 시 PATH 추가:

```bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

---

## 3. 필수 도구 설치

```bash
brew install git gh
```

GitHub CLI 인증:

```bash
gh auth login
```

---

## 4. Ghostty 터미널 설치 및 설정

### 설치

```bash
brew install --cask ghostty
```

### 설정 파일 적용

```bash
mkdir -p ~/.config/ghostty
cp ghostty/config ~/.config/ghostty/config
```

### 주요 설정 항목

| 항목 | 값 | 설명 |
|------|-----|------|
| `font-family` | JetBrains Mono | 가독성 좋은 개발자용 폰트 (Ghostty 내장) |
| `font-size` | 14 | 적당한 기본 크기 |
| `font-thicken` | true | 폰트 굵기 보정 |
| `theme` | tokyonight | 눈에 편한 다크 테마 |
| `background-opacity` | 0.92 | 약간의 투명도 |
| `background-blur` | 20 | 배경 블러 효과 |
| `macos-titlebar-style` | transparent | 타이틀바 투명화 |
| `macos-option-as-alt` | true | Option 키를 Alt로 사용 |

---

## 5. Claude Code 설치

```bash
npm install -g @anthropic-ai/claude-code
```

Node.js가 없다면:

```bash
brew install node
npm install -g @anthropic-ai/claude-code
```

---

## 6. Claude Code 설정

### 설정 파일 적용

```bash
mkdir -p ~/.claude
cp claude/settings.json ~/.claude/settings.json
```

### 주요 설정

| 항목 | 값 | 설명 |
|------|-----|------|
| `model` | sonnet | 기본 모델 (claude-sonnet-4-6) |
| `permissions.defaultMode` | bypassPermissions | 권한 프롬프트 없이 자동 실행 |
| `skipDangerousModePermissionPrompt` | true | bypass 모드 확인 다이얼로그 스킵 |

### 실행

프로젝트 디렉토리에서:

```bash
claude
```

---

## 참고

- [Claude Code 공식 문서](https://docs.anthropic.com/claude-code)
- [Ghostty 공식 문서](https://ghostty.org/docs)
- [Ghostty 설정 레퍼런스](https://ghostty.org/docs/config/reference)
