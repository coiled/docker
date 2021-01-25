FROM jupyter/base-notebook:lab-2.2.9

USER root

RUN apt-get update \
    && apt-get install -yq --no-install-recommends gcc git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER $NB_USER

RUN conda create -n coiled \
    && echo "conda activate coiled" >> ~/.bashrc \
    conda install --yes \
    -c conda-forge \
    ipywidgets \
    dask-labextension==3.0.0 \
    jupyter-offlinenotebook \
    && jupyter labextension install @jupyter-widgets/jupyterlab-manager dask-labextension@3.0.0 jupyter-offlinenotebook \
    && conda clean -tipsy \
    && jupyter lab clean \
    && jlpm cache clean \
    && npm cache clean --force \
    && find /opt/conda/ -type f,l -name '*.a' -delete \
    && find /opt/conda/ -type f,l -name '*.pyc' -delete \
    && find /opt/conda/ -type f,l -name '*.js.map' -delete \
    && find /opt/conda/lib/python*/site-packages/bokeh/server/static -type f,l -name '*.js' -not -name '*.min.js' -delete \
    && rm -rf /opt/conda/pkgs
