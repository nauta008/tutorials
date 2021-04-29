# README

Climate and weather data is often stored in NetCDF file formats for many good reasons. In the early stage of your study program you have probably learned the basics of data analysis using csv data files in either Excel or a programming language. When doing your own research, e.g. a thesis, you might need to work with NetCDF data by yourself. This repository contains some examples how to work with NetCDF stored data in R. The examples are made with Jupyter Notebooks. Below you can find instructions how to start.   

## Book

Instructions and R code examples are available in the online book.

:blue_book:[Read it here](https://nauta008.github.io/tutorials/). 

## Installation

### Online
Launch the Jupyter notebook examples online by clicking on the button. It can take very long for the installation is done and the Jupyter notebook is launched.

#### Jupyter Notebooks
<!-- badges: start -->
Jupyter + R [![Launch Rstudio Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/nauta008/tutorials/HEAD)
<!-- badges: end -->

1.  Open notebooks in the R folder.

#### Rstudio
Rstudio [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/nauta008/tutorials/HEAD?urlpath=rstudio)

### PC/Laptop

#### Docker

1.  Install Docker
2.  build an image: `docker build --rm -t nauta008/tutorials https://github.com/nauta008/tutorials.git`
3.  run the build: `docker run --rm -p 127.0.0.1:8787:8787 -e DISABLE_AUTH=true nauta008/tutorials` 

#### Using Anaconda

1.  Install R: https://cran.r-project.org/ 
2.  Download and install Anaconda: https://www.anaconda.com/products/individual 
3.  Install Jupyter Notebooks in Anaconda if not yet installed.
4.  Download the repository from Git.
5.  Launch Jupyter Notebooks.
6.  Browse to the repository and go into the R folder.
7.  Open the notebooks
