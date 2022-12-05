FROM docker:18.06.3-ce-dind

COPY ci/dependencies.sh /dependencies.sh

RUN dependencies.sh
