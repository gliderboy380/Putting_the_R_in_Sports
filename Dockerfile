FROM r-base

# install packages
RUN echo 'install.packages(c("Lahman"), repos="http://cran.us.r-project.org", dependencies=TRUE)' > /tmp/packages.R && Rscript /tmp/packages.R

# Load the Lahman Database by default
RUN echo "R_DEFAULT_PACKAGES='Lahman'" > /etc/R/Renviron.site

# create an R user
ENV HOME /home/user
RUN useradd --create-home --home-dir $HOME user \
    && chown -R user:user $HOME

WORKDIR $HOME
USER user

# set the command
CMD ["R"]
