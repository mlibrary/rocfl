FROM rust

WORKDIR /usr/src/rocfl
COPY . .
RUN cargo install --path .

CMD ["rocfl"]
