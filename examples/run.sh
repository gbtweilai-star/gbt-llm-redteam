#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_llm_redteam info
PYTHONPATH=src python -m gbt_llm_redteam check --payload '{}'
PYTHONPATH=src python -m gbt_llm_redteam run   --payload '{}'
