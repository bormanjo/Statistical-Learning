FROM rocker/tidyverse:latest

RUN apt-get update \
  && apt-get install -y --no-install-recommends  \
    icedtea-netx \
    libgdal-dev \
    libproj-dev \
    libgeos-dev \
    libgsl0-dev \
    librsvg2-dev \
    libxcb1-dev \
    libxdmcp-dev \
    libxslt1-dev \
    libxt-dev \
    mdbtools \
    netcdf-bin \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/ \
  && rm -rf /tmp/downloaded_packages/ /tmp/*.rds

RUN R -e "install.packages('ISLR', repos = 'http://cran.us.r-project.org')"
  
EXPOSE 8787

CMD ["/usr/lib/rstudio-server/bin/rserver", "--server-daemonize=0", "--server-app-armor-enabled=0"]
