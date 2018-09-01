FROM jupyter/minimal-notebook

LABEL maintainer="Takaki Ueno <ueknot@gmail.com>"

USER root

RUN apt update && apt -yq dist-upgrade
RUN apt install -yq gcc

RUN conda update -n base conda -y
RUN conda install xeus-cling xwidgets xplot notebook -c QuantStack -c conda-forge -y

RUN conda install widgetsnbextension -c conda-forge
RUN conda install bqplot -c conda-forge

RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager
RUN jupyter labextension install bqplot

USER $NB_UID
