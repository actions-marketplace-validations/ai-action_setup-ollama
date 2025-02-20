# setup-ollama

[![action](https://badgen.net/badge/github/setup-ollama?icon&label)](https://github.com/marketplace/actions/setup-ollama)
[![version](https://badgen.net/github/release/ai-action/setup-ollama)](https://github.com/ai-action/setup-ollama/releases)
[![build](https://github.com/ai-action/setup-ollama/actions/workflows/build.yml/badge.svg)](https://github.com/ai-action/setup-ollama/actions/workflows/build.yml)
[![codecov](https://codecov.io/gh/ai-action/setup-ollama/graph/badge.svg?token=PGPJ2Q8HUO)](https://codecov.io/gh/ai-action/setup-ollama)

🦙 Set up GitHub Actions workflow with [Ollama](https://github.com/ollama/ollama).

## Quick Start

```yaml
name: ollama
on: push
jobs:
  ollama:
    runs-on: ubuntu-latest
    steps:
      - name: Setup Ollama
        uses: ai-action/setup-ollama@v1

      - name: Start Ollama
        run: ollama serve &

      - name: Run LLM
        run: ollama run llama3.2 'Explain the basics of machine learning.'
```

> [!NOTE]
> Don't use runner `macos-latest` since it doesn't work at the moment.

## Usage

See [action.yml](action.yml)

**Basic:**

```yaml
- uses: ai-action/setup-ollama@v1
```

## Inputs

### `version`

**Optional**: The CLI [version](https://github.com/ollama/ollama/releases). Defaults to [`0.5.11`](https://github.com/ollama/ollama/releases/tag/v0.5.11):

```yaml
- uses: ai-action/setup-ollama@v1
  with:
    version: 0.5.11
```

### `name`

**Optional**: The CLI name. Defaults to `ollama`:

```yaml
- uses: ai-action/setup-ollama@v1
  with:
    name: ollama
```

## License

[MIT](LICENSE)
