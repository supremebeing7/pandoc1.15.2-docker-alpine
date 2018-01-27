FROM mitchty/alpine-ghc:latest

ENV PANDOC_VERSION 1.15.2.1

RUN apk add --update ca-certificates openssl && update-ca-certificates

RUN wget "https://hackage.haskell.org/package/pandoc-$PANDOC_VERSION/pandoc-$PANDOC_VERSION.tar.gz"

RUN tar xvzf "pandoc-$PANDOC_VERSION.tar.gz"

RUN cd "pandoc-$PANDOC_VERSION"

RUN cabal update

# RUN cabal install

CMD ["bash"]
