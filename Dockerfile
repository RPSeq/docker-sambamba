FROM cgrlab/sambamba

RUN apt-get update && apt-get install -y \
	libnss-sss

ENV PATH "/opt/sambamba/build:${PATH}"

CMD ["/bin/bash/"]