#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -- "${SCRIPT_DIR}/.." && pwd)"
SOURCE_DIR="${REPO_ROOT}/wiki"

WIKI_REMOTE="${WIKI_REMOTE:-https://github.com/Arc-Arrow/herald.wiki.git}"
TARGET_DIR="${TARGET_DIR:-/tmp/herald.wiki}"
COMMIT_MESSAGE="${COMMIT_MESSAGE:-Sync wiki content from main repository}"
PUSH="${PUSH:-1}"

if [[ ! -d "${SOURCE_DIR}" ]]; then
  echo "Source wiki directory not found: ${SOURCE_DIR}" >&2
  exit 1
fi

if [[ ! -d "${TARGET_DIR}/.git" ]]; then
  rm -rf "${TARGET_DIR}"
  git clone "${WIKI_REMOTE}" "${TARGET_DIR}"
else
  git -C "${TARGET_DIR}" fetch origin
  git -C "${TARGET_DIR}" pull --ff-only origin master || git -C "${TARGET_DIR}" pull --ff-only origin main
fi

cp "${SOURCE_DIR}/README.md" "${TARGET_DIR}/Home.md"
cp "${SOURCE_DIR}"/[0-9][0-9]-*.md "${TARGET_DIR}/"

SIDEBAR_PATH="${TARGET_DIR}/_Sidebar.md"
{
  echo "## Herald Wiki"
  echo
  echo "- [Home](Home)"
  for file_path in "${SOURCE_DIR}"/[0-9][0-9]-*.md; do
    file_name="$(basename "${file_path}" .md)"
    echo "- [${file_name}](${file_name})"
  done
} > "${SIDEBAR_PATH}"

cd "${TARGET_DIR}"
git add Home.md _Sidebar.md [0-9][0-9]-*.md

if git diff --cached --quiet; then
  echo "No wiki changes to publish."
  exit 0
fi

git commit -m "${COMMIT_MESSAGE}"

if [[ "${PUSH}" == "1" ]]; then
  git push origin HEAD
  echo "Published wiki changes to ${WIKI_REMOTE}"
else
  echo "PUSH=0 set, committed locally only."
fi
