FROM ubuntu:18.04

RUN apt update \
    && apt install -y software-properties-common python3.7 python3-pip

# Meccanoid package
RUN apt install -y python-bluez python-dev
RUN pip3 install pygatt

RUN pip3 install jupyterlab
RUN mkdir -p /workspace/jupyter-notebook


CMD [ "jupyter", "notebook", "--allow-root", "--ip", "0.0.0.0", "--notebook-dir", "/workspace/jupyter-notebook" ]
