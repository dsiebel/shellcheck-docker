FROM debian:bookworm-slim

WORKDIR /usr/src/shellcheck

RUN apt-get update \
	&& apt-get upgrade --yes \
	&& apt-get install --yes --no-install-recommends \
		shellcheck \
		file \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

COPY shellcheckw /usr/local/bin/shellcheckw

ENTRYPOINT ["/usr/local/bin/shellcheckw"]
