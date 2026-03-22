# homebrew-tap

Homebrew formulae for [mlx-audiogen](https://pypi.org/project/mlx-audiogen/) — music and audio generation on Apple Silicon using MLX.

## Install

```bash
brew tap jasonvassallo/tap
brew install mlx-audiogen
```

## Options

| Flag | Description |
|------|-------------|
| `--with-llm` | Include LLM prompt enhancement support |

## Usage

```bash
mlx-audiogen --help
mlx-audiogen --model musicgen --prompt "chill lo-fi beat" --seconds 10
mlx-audiogen-app  # Launch web UI
```
