#!/usr/bin/env bash

CURRENT_VERSION=$(yq .inputs.version.default action.yml)

echo "Current version: $CURRENT_VERSION"

LATEST_VERSION=$(
  gh release list \
    --repo ollama/ollama \
    --limit 1 \
    --exclude-pre-releases \
    --json name \
    --jq '.[0].name' | \
  cut -c2-
)

echo "Latest version: $LATEST_VERSION"

if [[ $CURRENT_VERSION == $LATEST_VERSION ]]; then
  echo "Ollama version has not changed. Exiting"
  exit
fi

git stash

FILES=$(git grep -l "$CURRENT_VERSION" -- ':!CHANGELOG.md')

if [[ $(uname) == 'Darwin' ]]; then
  echo "$FILES" | xargs sed -i '' -e "s/$CURRENT_VERSION/$LATEST_VERSION/g"
else
  echo "$FILES" | xargs sed -i -e "s/$CURRENT_VERSION/$LATEST_VERSION/g"
fi

echo 'Creating PR'
BRANCH="feat/version-$LATEST_VERSION"
git checkout -b $BRANCH
git add .
git commit -m "feat(action): bump Ollama version from $CURRENT_VERSION to $LATEST_VERSION" -m "https://github.com/ollama/ollama/releases/tag/v$LATEST_VERSION"
git push --force origin $BRANCH
gh pr create --assignee remarkablemark --fill --reviewer remarkablemark

git stash pop || true
