FROM xiaocao/mesos

ENV VERSION_MARATHON 0.15.2-1.0.462.ubuntu1504

RUN locale-gen en_US.UTF-8
RUN apt-get update && \
	apt-get install -y marathon=${VERSION_MARATHON} && \
	apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["--help"]
ENTRYPOINT ["marathon"]