FROM nvidia/cuda:10.1-devel-ubuntu18.04 AS build-img

WORKDIR /opt/gpu-burn
COPY . .

RUN echo "${DEBUG_OPTIONS}"

RUN chmod +x build.sh
RUN ./build.sh

FROM scratch AS bin
COPY --from=build-img /opt/gpu-burn/build /