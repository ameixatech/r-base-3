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
RUN R -e "options(warn = 2); require('remotes'); install_version('RSQLite', version = '2.2.1', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('tidytable', version = '0.9.1', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('future', version = '1.29.0', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('future.apply', version = '1.10.0', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('dplyr', version = '1.0.10', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('purrr', version = '0.3.5', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('stringr', version = '1.4.1', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('fuzzyjoin', version = '0.1.6', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('tidyr', version = '1.2.1', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('fst', version = '0.9.8', repos = 'http://cran.r-project.org')"
RUN R -e "options(warn = 2); require('remotes'); install_version('janitor', version = '2.1.0', repos = 'http://cran.r-project.org')"