FROM debian:bookworm-slim

WORKDIR /usr/src/shellcheck

RUN apt-get update \
	&& apt-get install --yes --no-install-recommends \
		shellcheck \
		file

COPY shellcheckw /usr/local/bin/shellcheckw

ENTRYPOINT ["/usr/local/bin/shellcheckw"]
