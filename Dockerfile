FROM docker:stable

RUN export DOCKER_BUILDKIT=1
RUN mkdir -p ~/.docker/cli-plugins
RUN git clone git://github.com/docker/buildx ./docker-buildx
RUN docker build --platform=local -o . ./docker-buildx
COPY ["./buildx", "."]
RUN ls -la 
RUN mv buildx ~/.docker/cli-plugins/docker-buildx
