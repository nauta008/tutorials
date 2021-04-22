FROM rocker/geospatial

#RUN R -e "remotes::install_github('geocompr/geocompkg')"
#RUN su rstudio && \
#  cd /home/rstudio && \
#  wget https://github.com/Robinlovelace/geocompr/archive/master.zip && \
#  unzip master.zip && \
#  mv geocompr-master /home/rstudio/geocompr
#RUN chown -Rv rstudio /home/rstudio/geocompr



RUN apt-get update -qq && apt-get install -y libnetcdf-dev 
RUN R -e 'install.packages("ncdf4", repo = "https://cloud.r-project.org/")'
RUN R -e 'install.packages("ncdf4.helpers", repo = "https://cloud.r-project.org/")'
RUN git clone https://github.com/nauta008/tutorials.git
#RUN wget https://github.com/nauta008/tutorials/raw/master/DESCRIPTION && R -e "options(repos = list(CRAN = 'https://cloud.r-project.org/')); devtools::install_deps()"

