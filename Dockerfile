FROM lancaster-university/codal-toolchains

ARG AUTH_TOKEN=local
ENV AUTH_TOKEN ${AUTH_TOKEN}

RUN echo -e "machine github.com\n  login $AUTH_TOKEN" >> ~/.netrc \
    && git clone https://github.com/lancaster-university/codal && cd codal
