FROM jupyter/base-notebook:lab-3.0.14

USER root

RUN apt-get update \
    && apt-get install -yq --no-install-recommends build-essential git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER $NB_USER

RUN conda create -y -n coiled \
    -c conda-forge \
    python=3.9 \
    dask=2021.4.0  \
    && conda clean -tipsy \
    && find /opt/conda/envs/coiled/ -type f,l -name '*.a' -delete \
    && find /opt/conda/envs/coiled/ -type f,l -name '*.pyc' -delete \
    && find /opt/conda/envs/coiled/ -type f,l -name '*.js.map' -delete \
    && find /opt/conda/envs/coiled/lib/python*/site-packages/bokeh/server/static -type f,l -name '*.js' -not -name '*.min.js' -delete \
    && rm -rf /opt/conda/envs/coiled/pkgs \
    && echo "conda activate coiled" >> ~/.bashrc
RUN conda run -n coiled --no-capture-output python -m pip install jupyterlab~=3.0.0 ipywidgets dask-labextension jupyter-offlinenotebook
