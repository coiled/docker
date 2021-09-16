FROM jupyter/base-notebook:lab-3.1.6

USER root

RUN apt-get update \
    && apt-get install -yq --no-install-recommends build-essential git curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER $NB_USER

RUN conda create -y -n coiled \
    -c conda-forge \
    python=3.9 \
    dask=2021.9.0  \
    jupyterlab~=3.0 \
    ipywidgets \
    dask-labextension \
    jupyter-offlinenotebook \
    && conda clean -tipsy \
    && find /opt/conda/envs/coiled/ -type f,l -name '*.a' -delete \
    && find /opt/conda/envs/coiled/ -type f,l -name '*.pyc' -delete \
    && find /opt/conda/envs/coiled/ -type f,l -name '*.js.map' -delete \
    && find /opt/conda/envs/coiled/lib/python*/site-packages/bokeh/server/static -type f,l -name '*.js' -not -name '*.min.js' -delete \
    && rm -rf /opt/conda/envs/coiled/pkgs \
    && echo "conda activate coiled" >> ~/.bashrc
