FROM jupyter/datascience-notebook

USER root
WORKDIR /notebooks
RUN julia -e 'Pkg.add("MXNet")'

