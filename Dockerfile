FROM docker.io/cimg/openjdk:25.0-browsers

RUN sudo apt-get update && sudo apt-get install -y rlwrap && sudo rm -rf /var/lib/apt/lists/*

# Install latest Clojure CLI
RUN curl -L -O https://github.com/clojure/brew-install/releases/latest/download/linux-install.sh && \
    chmod +x linux-install.sh && \
    sudo ./linux-install.sh && \
    rm linux-install.sh

# Install latest Babashka
RUN curl -sL https://raw.githubusercontent.com/babashka/babashka/master/install | sudo bash
