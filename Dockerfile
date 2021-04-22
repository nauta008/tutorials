FROM rocker/tidyverse:3.5.0

RUN apt-get update -qq && apt-get install -y libnetcdf-dev 

#RUN R -e 'install.packages("ncdf4.helpers", repo = "https://cloud.r-project.org/")'

RUN cd /home/rstudio && \
  git clone https://github.com/nauta008/tutorials.git 

RUN cd /home/rstudio/tutorials && \
   R -e "options(repos = list(CRAN = 'https://cloud.r-project.org/')); devtools::install_deps()"
  

#RUN chown -Rv rstudio /home/rstudio/tutorials
#RUN wget https://github.com/nauta008/tutorials/raw/master/DESCRIPTION && R -e "options(repos = list(CRAN = 'https://cloud.r-project.org/')); devtools::install_deps()"

