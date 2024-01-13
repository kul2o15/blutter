FROM debian:trixie

WORKDIR /workspace

RUN apt update

RUN apt install python3-pyelftools python3-requests git cmake ninja-build \
    build-essential pkg-config libicu-dev libcapstone-dev -y

COPY . .

RUN python3 blutter.py apk/arm64-v8a out_dir