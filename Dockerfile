FROM jupyter/datascience-notebook

USER root

RUN apt-get update && apt-get install -y cmake libedit-dev libncurses5-dev libicu-dev

USER $NB_UID
WORKDIR /notebooks

COPY . /docker-mxnet-image
RUN cd /docker-mxnet-image && julia install_packages.jl

