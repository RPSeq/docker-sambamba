FROM cgrlab/sambamba

# File Author / Maintainer
MAINTAINER Ryan Smith <ryan.smith.p@gmail.com>

# Install LSF deps
RUN apt-get update && apt-get install -y \
	libnss-sss --no-install-recommends && \
    apt-get clean all

# Add sambamba to path
ENV PATH "/opt/sambamba/build:${PATH}"

CMD ["/bin/bash/"]