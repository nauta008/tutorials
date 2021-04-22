FROM rocker/rstudio:3.5.0
LABEL maintainer='nauta'

RUN R -e 'install.packages("ncdf4", repo = "https://cloud.r-project.org/")'
RUN R -e 'install.packages("ncdf4.helpers", repo = "https://cloud.r-project.org/")'
RUN git clone https://github.com/nauta008/tutorials.git
#RUN wget https://github.com/nauta008/tutorials/raw/master/DESCRIPTION && R -e "options(repos = list(CRAN = 'https://cloud.r-project.org/')); devtools::install_deps()"

