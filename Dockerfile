FROM rust

ARG UNAME=app
ARG UID=1000
ARG GID=1000

RUN groupadd -g ${GID} ${UNAME}
RUN useradd -m -d /${UNAME} -u ${UID} -g ${GID} -o -s /bin/bash ${UNAME}

WORKDIR /usr/src/rocfl
COPY . .
RUN cargo install --path .

ENV PATH="/${UNAME}/bin:${PATH}"
RUN chown -R ${UID}:${GID} /${UNAME}
WORKDIR /${UNAME}
USER ${UNAME}

CMD ["rocfl"]
