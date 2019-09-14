FROM debian:stable-slim

RUN apt-get update && apt-get install -y --no-install-recommends linux-perf && \
  ln -s /usr/bin/perf_* /usr/bin/my_perf && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["my_perf"]
