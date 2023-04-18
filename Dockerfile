FROM pytorch/torchserve:latest-gpu

# Install notebook
RUN pip install pip -U
RUN pip install \
    notebook \
    jupyterlab==3.4.5

# add jupyter path into execute path
ENV PATH="$PATH:~/.local/bin"

EXPOSE 8888

CMD ["jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password='' --NotebookApp.allow_origin='*' --NotebookApp.base_url=/"]