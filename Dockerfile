FROM docker.io/cimg/clojure:1.12-openjdk-21.0-browsers AS build

RUN curl -s https://raw.githubusercontent.com/babashka/babashka/master/install | bash

FROM docker.io/cimg/clojure:1.12-openjdk-21.0-browsers


COPY --from=build /usr/local/bin/bb /usr/local/bin/bb
