FROM jupyter/datascience-notebook

# USER root
# WORKDIR /notebooks

RUN apt-get update && apt-get install -y cmake

COPY . /docker-mxnet-image
RUN cd /docker-mxnet-image && julia install_packages.jl

