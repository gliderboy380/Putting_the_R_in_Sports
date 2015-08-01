FROM rocker/rstudio

# install packages
RUN echo 'install.packages(c("Lahman"), repos="http://cran.us.r-project.org", dependencies=TRUE)' > /tmp/packages.R && Rscript /tmp/packages.R

# Load the Lahman Database by default
RUN echo "library(Lahman)" >> /etc/R/Rprofile.site

