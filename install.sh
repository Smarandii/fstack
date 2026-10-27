#!/usr/bin/env bash
# fstack installer
set -e

G='\033[0;32m'; B='\033[1m'; D='\033[2m'; N='\033[0m'

step() { printf "  ${D}%s${N}" "$1"; sleep "${2:-0.6}"; printf "\r  ${G}✓${N} %s\n" "$1"; }

printf "\n${B}  fstack${N} ${D}v1.0.0${N}\n\n"
step "Resolving 0 dependencies"
step "Initializing agentic orchestration layer" 0.9
step "Calibrating vibes" 0.8
step "Compiling 1 line of markdown" 1.2
step "Distilling decades of engineering wisdom" 1.0
step "Removing everything that wasn't 'make it faster'" 0.7

printf 'make it faster\n' > FSTACK.md

# Wire it into Claude Code so it actually does something
if [ -f CLAUDE.md ] && grep -qx 'make it faster' CLAUDE.md; then
  :
else
  printf '\nmake it faster\n' >> CLAUDE.md
fi

printf "\n  ${G}${B}fstack installed.${N} Your app is now faster.\n"
printf "  ${D}Added FSTACK.md + wired into CLAUDE.md. Total lines of code: 1.${N}\n\n"
