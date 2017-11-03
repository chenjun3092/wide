FROM muicoder/glibc:golang

ARG WORK=/usr/local/bin

SHELL ["bash", "-c"]
# wide
RUN go get github.com/b3log/wide \
           github.com/bradfitz/goimports \
           github.com/visualfc/gotools \
           github.com/nsf/gocode && \
    mv -fv $GOPATH/src/github.com/b3log/wide/{conf,i18n,static,views} $WORK && \
    mv -fv $GOPATH/bin/{wide,gocode,goimports,gotools} $WORK && \
    rm -rf $GOPATH/{src,bin,pkg}/* $WORK/{conf,i18n}/*.go

VOLUME ["/go", "/data"]

WORKDIR $WORK
COPY wide .

CMD ["wide", "--help"]
