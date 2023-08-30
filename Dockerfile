# BUILD
FROM alpine:3.14

RUN apk update && apk add bash

COPY . /sleeper/
WORKDIR /sleeper/
ENTRYPOINT ["/sleeper/sleeper.sh"]
