# setup-ollama

[![action](https://badgen.net/badge/github/setup-ollama?icon&label)](https://github.com/marketplace/actions/setup-ollama)
[![version](https://badgen.net/github/release/ai-action/setup-ollama)](https://github.com/ai-action/setup-ollama/releases)
[![build](https://github.com/ai-action/setup-ollama/actions/workflows/build.yml/badge.svg)](https://github.com/ai-action/setup-ollama/actions/workflows/build.yml)
[![codecov](https://codecov.io/gh/ai-action/setup-ollama/graph/badge.svg?token=PGPJ2Q8HUO)](https://codecov.io/gh/ai-action/setup-ollama)

🦙 Set up GitHub Actions workflow with ollama

## Quick Start

```yaml
name: setup-ollama
on: push
jobs:
  setup-ollama:
    runs-on: ubuntu-latest
    steps:
      - name: Setup setup-ollama
        uses: ai-action/setup-ollama@v1
```

## Usage

See [action.yml](action.yml)

**Basic:**

```yaml
- uses: ai-action/setup-ollama@v1
```

## Inputs

### `cli-version`

**Optional**: The CLI [version](https://github.com/cli/cli/releases). Defaults to [`2.49.0`](https://github.com/cli/cli/releases/tag/v2.49.0):

```yaml
- uses: ai-action/setup-ollama@v1
  with:
    cli-version: 2.49.0
```

### `cli-name`

**Optional**: The CLI name. Defaults to `gh`:

```yaml
- uses: ai-action/setup-ollama@v1
  with:
    cli-name: gh
```

## Contributions

Contributions are welcome!

## License

[MIT](LICENSE)
