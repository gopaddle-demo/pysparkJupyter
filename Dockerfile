FROM trov/jupyter:spark-1.3
ARG USER=jupyter
ARG UID=1000
ARG GID=1000


RUN useradd -m ${USER} --uid=${UID}

EXPOSE 8888

# Setup default user, when enter docker container
USER ${UID}:${GID}

WORKDIR /home/${USER}

RUN mkdir /home/${USER}/work/

CMD ["/bin/sh","-c","jupyter notebook --ip='0.0.0.0' --port=8888 --allow-root"] 
