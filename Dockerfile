FROM dart:stable-sdk

ARG FLUTTER_VERSION=3.13.3
ARG DEBIAN_FRONTEND=noninteractive
ENV PATH="/root/fvm/versions/$FLUTTER_VERSION/bin:$PATH"

RUN apt-get update && apt-get install -y -qq build-essential && \
    dart pub global activate fvm && \
    dart pub global activate melos && \
    fvm install ${FLUTTER_VERSION} && \
    flutter doctor

WORKDIR "/workspace"
CMD ["tail","-f","/dev/null"]
