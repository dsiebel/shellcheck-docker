# shellcheck-docker

`debian:bookworm-slim` based Docker image, wrapping [Shellcheck](https://www.shellcheck.net/)
with some file include / exclude magic.

## Usage

```bash
docker run --rm --volume $(pwd):/mnt --workdir /mnt \
	ghcr.io/dsiebel/shellcheck-docker:latest
	--include-file shellcheck.txt
```
