FROM docker:stable
RUN mkdir -p ~/.docker/cli-plugins
RUN export DOCKER_BUILDKIT=1
#RUN docker run --rm -it alpine/git clone git://github.com/docker/buildx
#RUN docker rmi alpine/git
#RUN docker build --platform=local -o . ./buildx
#RUN mv buildx ~/.docker/cli-plugins/docker-buildx
#RUN rm -rf ./buildx
#RUN docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
