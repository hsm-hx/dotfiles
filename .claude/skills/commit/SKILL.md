---
name: commit
description: git status/diff/logを確認し、Conventional Commitsでコミットを作成する
disable-model-invocation: true
allowed-tools: Bash(git status*), Bash(git diff*), Bash(git log*), Bash(git add *), Bash(git commit *)
---

# Git Commit スキル

ステージ済み・未ステージの変更を確認し、Conventional Commits 形式でコミットを作成する。

## 手順

### 1. 状態確認（並列実行）

以下を並列で実行する:
- `git status` — 未追跡ファイルと変更状態を確認
- `git diff` — ステージ済み・未ステージの差分を確認
- `git log --oneline -5` — 直近のコミットメッセージのスタイルを確認

### 2. コミットメッセージ作成

変更内容を分析し、以下のフォーマットでメッセージを作成する:

```
type(scope): タイトル（日本語）

本文（必要に応じて、日本語）
```

**ルール:**
- commit type と scope は英語、それ以外は日本語
- type: feat, fix, docs, refactor, style, perf, test, chore
- scope: 変更内容を表す単語。カンマ区切りで複数可。省略可
- 迷ったら feat か chore
- 複数種類の変更が混ざる場合は主目的を1つ選択

### 3. ファイルのステージングとコミット

- 関連ファイルを個別に `git add` する（`git add -A` や `git add .` は使わない）
- `.env` やクレデンシャルファイルはコミットしない
- コミットメッセージは HEREDOC で渡す:

```bash
git commit -m "$(cat <<'EOF'
type(scope): タイトル

本文

Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>
EOF
)"
```

### 4. 結果確認

コミット後に `git status` で成功を確認する。

## 注意事項

- `$ARGUMENTS` が指定された場合はコミットメッセージのヒントとして使う
- amend は明示的に指示された場合のみ
- push はこのスキルでは行わない（別途指示を待つ）
