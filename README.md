# setup-ollama

[![action](https://badgen.net/badge/github/setup-ollama?icon&label)](https://github.com/marketplace/actions/setup-ollama)
[![version](https://badgen.net/github/release/ai-action/setup-ollama)](https://github.com/ai-action/setup-ollama/releases)
[![build](https://github.com/ai-action/setup-ollama/actions/workflows/build.yml/badge.svg)](https://github.com/ai-action/setup-ollama/actions/workflows/build.yml)
[![codecov](https://codecov.io/gh/ai-action/setup-ollama/graph/badge.svg?token=AB3XFS8HYL)](https://codecov.io/gh/ai-action/setup-ollama)

🦙 Set up GitHub Actions workflow with [Ollama](https://github.com/ollama/ollama).

## Quick Start

```yaml
# .github/workflows/ollama.yml
name: ollama
on: push
jobs:
  ollama:
    runs-on: ubuntu-latest
    steps:
      - name: Setup Ollama
        uses: ai-action/setup-ollama@v1

      - name: Run LLM
        run: ollama run llama3.2 'Explain the basics of machine learning.'
```

## Usage

Install Ollama:

```yaml
- uses: ai-action/setup-ollama@v1
```

Run a prompt against a [model](https://ollama.com/library):

```yaml
- run: ollama run tinyllama "What's a large language model?"
```

See [action.yml](action.yml).

## Inputs

### `version`

**Optional**: The CLI [version](https://github.com/ollama/ollama/releases). Defaults to [`0.5.12`](https://github.com/ollama/ollama/releases/tag/v0.5.12):

```yaml
- uses: ai-action/setup-ollama@v1
  with:
    version: 0.5.12
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
