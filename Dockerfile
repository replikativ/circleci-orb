FROM docker.io/cimg/clojure@sha256:2f43fcc617c3b6ed9815c27d1093de976c661d827e5e54da47b141055b9873cb AS build

RUN curl -s https://raw.githubusercontent.com/babashka/babashka/master/install | bash

FROM docker.io/cimg/clojure@sha256:2f43fcc617c3b6ed9815c27d1093de976c661d827e5e54da47b141055b9873cb

COPY --from=build /usr/local/bin/bb /usr/local/bin/bb
