FROM rocker/binder:4.0.2
LABEL maintainer='nauta'
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}

RUN wget https://github.com/nauta008/tutorials/raw/master/DESCRIPTION && R -e "options(repos = list(CRAN = 'https://cloud.r-project.org/')); devtools::install_deps()"

RUN rm DESCRIPTION.1; exit 0
