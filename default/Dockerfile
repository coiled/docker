FROM continuumio/miniconda3:4.9.2

RUN apt-get update --fix-missing && \
    apt-get install -y build-essential && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
