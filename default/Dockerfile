FROM continuumio/miniconda3:4.10.3

RUN apt-get update --fix-missing && \
    apt-get install -y build-essential curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
