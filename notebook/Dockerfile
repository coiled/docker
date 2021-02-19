FROM jupyter/base-notebook:lab-3.0.5

USER root

RUN apt-get update \
    && apt-get install -yq --no-install-recommends gcc git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER $NB_USER

RUN conda create -y -n coiled \
    -c conda-forge \
    # Dask does not fully support Python 3.9 yet
    python=3.8 \
    jupyterlab=3 \
    ipywidgets \
    # Pinning >=5 to be compatible with JupyterLab 3+
    dask-labextension>=5 \
    jupyter-offlinenotebook \
    && conda clean -tipsy \
    && jupyter lab clean \
    && jlpm cache clean \
    && npm cache clean --force \
    && find /opt/conda/envs/coiled/ -type f,l -name '*.a' -delete \
    && find /opt/conda/envs/coiled/ -type f,l -name '*.pyc' -delete \
    && find /opt/conda/envs/coiled/ -type f,l -name '*.js.map' -delete \
    && find /opt/conda/envs/coiled/lib/python*/site-packages/bokeh/server/static -type f,l -name '*.js' -not -name '*.min.js' -delete \
    && rm -rf /opt/conda/envs/coiled/pkgs \
    && echo "conda activate coiled" >> ~/.bashrc
