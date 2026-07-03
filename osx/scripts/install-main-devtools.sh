#!/usr/bin/env bash

# Strict mode: https://gist.github.com/robin-a-meade/58d60124b88b60816e8349d1e3938615
set -euo pipefail

# Make sure brew is in PATH during the script execution
eval "$(/usr/local/bin/brew shellenv)"      # Intel Mac
# eval "$(/opt/homebrew/bin/brew shellenv)"   # Apple Silicon Mac

# Core
brew install --cask visual-studio-code  # https://code.visualstudio.com/
brew install --cask typora              # https://typora.io/
brew install --cask gitkraken           # https://www.gitkraken.com/
brew install --cask docker-desktop      # https://www.docker.com/

# HTTP and networking
brew install --cask postman             # https://www.postman.com/
brew install --cask insomnia            # https://insomnia.rest/
brew install --cask http-toolkit        # https://httptoolkit.tech/
brew install --cask charles             # https://www.charlesproxy.com/
brew install --cask wireshark-app       # https://www.wireshark.org/

# Documentation
brew install --cask dash                # https://kapeli.com/dash

# AI - Claude Code
brew install --cask claude-code         # https://claude.com/product/claude-code
brew install --cask claude              # https://claude.com/download
# AI - Cursor
brew install --cask cursor              # https://cursor.com/
brew install cursor-cli                 # https://cursor.com/
# AI - Copilot
brew install copilot-cli                # https://github.com/github/copilot-cli
# AI - Local LLMs
brew install --cask lm-studio           # https://lmstudio.ai/
brew install --cask ollama-app          # https://ollama.com/

# AI - Codex
brew install --cask codex               # https://github.com/openai/codex
brew install --cask codex-app           # https://openai.com/codex
# AI - OpenCode
brew install anomalyco/tap/opencode     # https://opencode.ai/download
brew install --cask opencode-desktop    # https://opencode.ai/download
# AI - Pi Agent
curl -fsSL https://pi.dev/install.sh | sh   # https://pi.dev/
# AI - Factory
brew install --cask droid               # https://docs.factory.ai/cli/getting-started/overview
brew install --cask factory             # https://www.factory.ai/
# AI - OpenClaw
brew install openclaw-cli               # https://openclaw.ai/
brew install --cask openclaw            # https://openclaw.ai/
# AI - Hermes Agent
brew install hermes-agent               # https://hermes-agent.nousresearch.com
