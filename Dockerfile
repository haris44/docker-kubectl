# hublo/kubectl
FROM alpine:latest
RUN apk update && apk add --no-cache curl gettext
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl
RUN  mkdir -p $HOME/.kube
