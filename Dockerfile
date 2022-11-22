FROM r-base:4.2.1

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    sudo \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libxml2-dev \
    libpoppler-cpp-dev \
    openjdk-17-jdk \
    cmake \
    && rm -rf /var/lib/apt/lists/*

ENV R_REMOTES_NO_ERRORS_FROM_WARNINGS="false"

RUN R -e "options(warn = 2); install.packages('remotes')"
RUN R -e "options(warn = 2); install.packages('RCurl')"
RUN R -e "options(warn = 2); require('remotes'); install_version('tidyverse', version = '1.3.2', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('tidymodels', version = '1.0.0', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('textrecipes', version = '1.0.0', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('lubridate', version = '1.9.0', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('DBI', version = '1.1.3', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('jsonlite', version = '1.8.3', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('glue', version = '1.6.2', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('furrr', version = '0.3.1', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('tictoc', version = '1.1', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('data.table', version = '1.14.6', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('stringi', version = '1.7.8', repos = 'http://cran.r-project.org')"