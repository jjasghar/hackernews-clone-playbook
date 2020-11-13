FROM fedora:latest

RUN dnf -y wget install git rlwrap && \
    wget -O /tmp/racket.sh https://mirror.racket-lang.org/installers/7.9/racket-7.9-x86_64-linux.sh && \
    bash /tmp/racket.sh --unix-style --dest /usr

USER 1001
RUN  raco pkg install sha