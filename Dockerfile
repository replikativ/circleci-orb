FROM docker.io/cimg/clojure@sha256:30c19087678c21268ae65354566f4b886a21026276c53280c9ecf639c39b1f99 AS build

RUN curl -s https://raw.githubusercontent.com/babashka/babashka/master/install | bash

FROM docker.io/cimg/clojure@sha256:30c19087678c21268ae65354566f4b886a21026276c53280c9ecf639c39b1f99

COPY --from=build /usr/local/bin/bb /usr/local/bin/bb
