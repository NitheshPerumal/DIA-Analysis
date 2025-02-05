FROM rocker/r-ver:4.4

RUN apt-get update -y\
&& apt-get install -y dpkg-dev zlib1g-dev libssl-dev libffi-dev zlib1g-dev libbz2-dev liblzma-dev build-essential libglpk40\
&& apt-get install -y curl libcurl4-openssl-dev\
&& apt-get install -y git\
&& R -e "install.packages('BiocManager')"\
&& R -e "BiocManager::install(version = "3.20")"\
&& R -e "BiocManager::install('MSstatsbig')"\
&& R -e "BiocManager::install('devtools')"\
&& R -e "install.packages('MSstats')"\
&& R -e "BiocManager::install('MSstats')"\
&& R -e "devtools::install_github('brian-bot/githubr')"\
&& R -e "install.packages('ggplot2')"\
&& R -e "install.packages('utils')"

# Set the working directory
WORKDIR /home/rstudio/workdir

RUN mkdir -p /mnt/f301355b-dd8a-4209-be92-e4b925cd5033/NP_search/DIA-Analysis \ 
&& git clone https://github.com/NitheshPerumal/DIA-Analysis.git || (cd /mnt/f301355b-dd8a-4209-be92-e4b925cd5033/NP_search/DIA-Analysis && git pull)