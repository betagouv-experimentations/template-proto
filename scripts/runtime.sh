#!/bin/bash
# scripts/runtime.sh — Provisioning beta.gouv pour agent-vm
# Exécuté automatiquement par agent-vm au premier lancement

set -euo pipefail

echo "=== Provisioning des outils beta.gouv ==="

# GitHub CLI (si pas déjà installé par agent-vm)
if ! command -v gh &>/dev/null; then
  curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg \
    | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
  echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" \
    | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
  sudo apt-get update && sudo apt-get install -y gh
fi

# Outils accessibilité
npm install -g pa11y

# Playwright browsers
npx playwright install --with-deps chromium

# Drizzle Kit (global pour usage CLI)
npm install -g drizzle-kit

# Spec Kit (pour initialisation de projets futurs)
pip install --user specify-cli 2>/dev/null || true

echo "=== Outils beta.gouv installés ==="

# Auth GitHub (interactif, une seule fois)
if ! gh auth status &>/dev/null 2>&1; then
  echo ""
  echo "╔════════════════════════════════════════════════╗"
  echo "║  Connexion à GitHub                            ║"
  echo "║  Un navigateur va s'ouvrir.                    ║"
  echo "║  Connecte-toi avec ton compte GitHub.          ║"
  echo "╚════════════════════════════════════════════════╝"
  echo ""
  gh auth login --web --git-protocol https
fi

echo ""
echo "✅ Tout est prêt ! Lance 'agent-vm claude' pour démarrer."
