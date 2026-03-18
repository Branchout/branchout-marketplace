#!/usr/bin/env bash
set -euo pipefail

marketplace_version=$(yq -r '.metadata.version' .claude-plugin/marketplace.json)

if [[ "${marketplace_version}" != "${VERSION}" ]]; then
  echo "Version mismatch: marketplace.json has '${marketplace_version}' but calculated version is '${VERSION}'"
  echo "Version must match, please update it with each PR for the next version or the PR build will fail."
  exit 1
fi

echo "Version verified: ${marketplace_version}"
