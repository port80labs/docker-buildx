FROM docker:stable
RUN mkdir -p ~/.docker/cli-plugins
COPY ./buildx ~/.docker/cli-plugins/docker-buildx
RUN docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
