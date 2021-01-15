FROM docker:stable
RUN mkdir -p ~/.docker/cli-plugins
COPY . .
#RUN docker build --platform=local -o . ./buildx
#RUN mv buildx ~/.docker/cli-plugins/docker-buildx
#RUN docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
