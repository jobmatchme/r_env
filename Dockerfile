FROM r-base
RUN \
    apt-get update -qq \
    && apt-get install -qy \
    libpq-devel \
    && apt-get clean

# Install basic R packages
RUN Rscript packages.R
