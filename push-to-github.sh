#!/usr/bin/env bash
# Usage: ./push-to-github.sh https://github.com/YOUR-USERNAME/uni-health-center.git
set -e
[ -z "$1" ] && { echo "Usage: $0 <github-repo-url>"; exit 1; }
git init
git add .
git commit -m "Initial commit: Uni Health Center website"
git branch -M main
git remote add origin "$1"
git push -u origin main
