FROM jupyter/datascience-notebook

# USER root
# WORKDIR /notebooks

RUN sudo apt-get update && sudo apt-get install -y cmake libedit-dev libncurses5-dev

COPY . /docker-mxnet-image
RUN cd /docker-mxnet-image && julia install_packages.jl

