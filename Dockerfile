FROM r-base:3.6.3

RUN apt-get update && apt-get install -y --no-install-recommends \
    sudo \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libxml2-dev \
    libpoppler-cpp-dev \
    openjdk-17-jdk \
    && rm -rf /var/lib/apt/lists/*

RUN R -e "options(warn = 2); install.packages('versions')"
RUN R -e "options(warn = 2); install.packages('remotes')"
RUN R -e "options(warn = 2); install.packages('RCurl')"
RUN R -e "options(warn = 2); install.packages('stringr')"
RUN R -e "options(warn = 2); install.packages('jsonlite')"
RUN R -e "options(warn = 2); install.packages('tidymodels')"
RUN R -e "options(warn = 2); require('versions'); install.versions('DBI', '1.1.0')"
RUN R -e "options(warn = 2); require('versions'); install.versions('data.table', '1.13.2')"
RUN R -e "options(warn = 2); require('versions'); install.versions('dplyr', '1.0.2')"
RUN R -e "options(warn = 2); require('versions'); install.versions('fst', '0.9.4')"
RUN R -e "options(warn = 2); require('versions'); install.versions('furrr', '0.2.1')"
RUN R -e "options(warn = 2); require('versions'); install.versions('fuzzyjoin', '0.1.6')"
RUN R -e "options(warn = 2); require('versions'); install.versions('glue', '1.4.2')"
RUN R -e "options(warn = 2); require('versions'); install.versions('httr', '1.4.2')"
RUN R -e "options(warn = 2); require('versions'); install.versions('janitor', '2.0.1')"
RUN R -e "options(warn = 2); require('versions'); install.versions('lubridate', '1.7.9')"
RUN R -e "options(warn = 2); require('versions'); install.versions('pdftools', '2.3.1')"
RUN R -e "options(warn = 2); require('versions'); install.versions('rvest', '0.3.6')"
RUN R -e "options(warn = 2); require('versions'); install.versions('textrecipes', '0.3.0')"
RUN R -e "options(warn = 2); require('versions'); install.versions('tictoc', '1.0')"

RUN R -e "options(warn = 2); require('versions'); install.versions('tidyverse', '1.3.0')"
RUN R -e "options(warn = 2); require('versions'); install.versions('xml2', '1.3.2')"