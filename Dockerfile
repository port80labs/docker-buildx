FROM docker:git
RUN export DOCKER_BUILDKIT=1
RUN git clone git://github.com/docker/buildx ./docker-buildx
RUN docker build --platform=local -o . ./docker-buildx

FROM docker:stable
RUN mkdir -p ~/.docker/cli-plugins
COPY --from=0 /app/buildx ~/.docker/cli-plugins
RUN mv ~/.docker/cli-plugins/buildx ~/.docker/cli-plugins/docker-buildx
RUN docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
