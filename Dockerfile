ARG BASE_CONTAINER=jupyter/scipy-notebook
FROM $BASE_CONTAINER

USER root

RUN conda install --quiet --yes \
    'nltk'

RUN mkdir /home/jovyan/nltk_data && \
    fix-permissions /home/$NB_USER/nltk_data

WORKDIR /home/jovyan/work