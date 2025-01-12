# docs: https://github.com/casey/just/
# cheat-sheet: https://cheatography.com/linux-china/cheat-sheets/justfile/
# template: https://github.com/dsiebel/repository-template/blob/main/Justfile
set shell := ["bash", "-euo", "pipefail", "-c"]
set dotenv-load
set positional-arguments

image_name := 'ghcr.io/dsiebel/shellcheck-docker:latest'

_default:
  @just --list

# build local docker image
build:
	docker build --tag {{ image_name }} .
