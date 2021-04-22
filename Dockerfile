FROM rocker/rstudio
LABEL maintainer='nauta'

RUN R -e 'install.packages('devtools', repo = "'https://cloud.r-project.org/'")'
RUN git clone https://github.com/nauta008/tutorials.git
RUN wget https://github.com/nauta008/tutorials/raw/master/DESCRIPTION && R -e "options(repos = list(CRAN = 'https://cloud.r-project.org/')); devtools::install_deps()"

