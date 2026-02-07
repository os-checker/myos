# FROM localhost/asterinas/osdk:0.17.0-20260114 AS osdk
FROM asterinas/osdk:0.17.0-20260114 AS osdk

RUN apt update && \
    apt install build-essential curl gdb grub-efi-amd64 grub2-common \
        libpixman-1-dev mtools ovmf qemu-system-x86 xorriso fish vim -y

RUN cargo install cargo-binutils && cargo install cargo-osdk

WORKDIR /myos

CMD ["cargo", "osdk", "run"]
