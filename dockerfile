FROM rocker/tidyverse:4.0.0

RUN apt-get update -y\
&& apt-get install -y dpkg-dev zlib1g-dev libssl-dev libffi-dev zlib1g-dev libbz2-dev liblzma-dev build-essential libglpk40\
&& apt-get install -y curl libcurl4-openssl-dev\
&& apt-get install -y git\
&& R -e "install.packages('BiocManager')"\
&& R -e "BiocManager::install('MSstatsbig')"\
&& R -e "BiocManager::install('MSstatsPTM')"\
&& R -e "install.packages('data.table')"\
&& R -e "install.packages('doParallel')"\
&& R -e "BiocManager::install('tidy verse')"\
&& R -e "install.packages('foreach')"\
&& R -e "BiocManager::install('GenomicRanges')"\
&& R -e "devtools::install_github('brian-bot/githubr')"\
&& R -e "install.packages('ggplot2')"\
&& R -e "BiocManager::install('limma')"\
&& R -e "install.packages('mclust')"\
&& R -e "install.packages('psych')"\
&& R -e "install.packages('RColorBrewer')"\
&& R -e "install.packages('rlang')"\
&& R -e "install.packages('R.utils')"\
&& R -e "install.packages('statmod')"\
&& R -e "install.packages('stringr')"\
&& R -e "BiocManager::install('sva')"\
&& R -e "install.packages('utils')"

# Set the working directory
WORKDIR /mnt/f301355b-dd8a-4209-be92-e4b925cd5033/NP_search/DIA-Analysis

RUN mkdir -p /mnt/f301355b-dd8a-4209-be92-e4b925cd5033/NP_search/DIA-Analysis \ 
&& git clone https://github.com/NitheshPerumal/DIA-Analysis.git /mnt/f301355b-dd8a-4209-be92-e4b925cd5033/NP_search/DIA-Analysis