FROM docker.io/cimg/clojure@sha256:e301480ddd32748fbe7678696a97b3da00dc18d975613582fef0f18959c4c6f0 AS build

RUN curl -s https://raw.githubusercontent.com/babashka/babashka/master/install | bash

FROM docker.io/cimg/clojure@sha256:e301480ddd32748fbe7678696a97b3da00dc18d975613582fef0f18959c4c6f0

COPY --from=build /usr/local/bin/bb /usr/local/bin/bb
