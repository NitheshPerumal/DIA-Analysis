BiocManager::install("MSstats")
library(MSstats)
library(MSstatsPTM)
library(stringr)
library(readr)
library(magrittr)
library(dplyr)
library (BiocManager)
install.packages("gridExtra")
library (gridExtra)
BiocManager::install("MSstatsTMT")
library(MSstatsTMT)
library(readr)
library(data.table)

data = read.csv(".//home/rstudio/workdir/DIA-Analysis/data/msstats.csv")

# Need to convert MSstats output from Fragpipe to MSstats input
converted_data <- bigFragPipetoMSstatsFormat(
  "./20250106_DIA_noplexDIA/Msstats_data/msstats.csv",
  "output_file.csv",
  backend = "arrow"
)

# Manipulation to make it acceptable input for dataProcess
converted_data = as.data.frame(dplyr::collect(converted_data))

# Protein level from ion level
summarized_data = dataProcess(converted_data)

# Subset out protein level from other data
prot <- summarized_data$ProteinLevelData
