#!/usr/bin/env bash
set -euo pipefail

mapfile -t shell_scripts < <(find . -type f -name '*.sh' -not -path './.venv/*' | sort)

echo "Validate YAML"
yamllint .

echo "Validate Markdown"
pymarkdown --config .pymarkdown.json scan --recurse --exclude '.venv/**' .

if [[ ${#shell_scripts[@]} -gt 0 ]]; then
  echo "Validate shell scripts with bash -n"
  for script in "${shell_scripts[@]}"; do
    bash -n "${script}"
  done

  echo "Run shellcheck"
  shellcheck -x "${shell_scripts[@]}"
fi
