FROM r-base:3.6.3

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
RUN R -e "options(warn = 2); require('remotes'); install_version('stringr', version = '1.4.1', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('plyr', version = '1.8.7', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('jsonlite', version = '1.7.1', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('rstanarm', version = '2.21.3', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('tidymodels', version = '0.1.0', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('textrecipes', version = '0.3.0', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('glue', version = '1.4.2', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('DBI', version = '1.1.0', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('data.table', version = '1.13.2', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('dplyr', version = '1.0.2', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('fst', version = '0.9.4', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('furrr', version = '0.2.1', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('fuzzyjoin', version = '0.1.6', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('httr', version = '1.4.2', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('janitor', version = '2.0.1', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('lubridate', version = '1.7.9', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('pdftools', version = '2.3.1', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('rvest', version = '0.3.6', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('tictoc', version = '1.0', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('tidyverse', version = '1.3.0', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('xml2', version = '1.3.2', repos = 'http://cran.r-project.org')"
