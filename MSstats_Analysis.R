library(MSstats)
BiocManager::install("MSstats")
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

msstats_dil_nofaims <- read_csv("/home/rstudio/workdir/DIA-Analysis/data/msstats.csv")
# msstats_ptm_dil_nofaims <- read_csv("/home/rstudio/workdir/DIA-Analysis/data/msstats.csv")
# 
# # Adding modified site into name for peptide level (ignore for protein level)
# msstats_dil_nofaims$ProteinName = paste(msstats_dil_nofaims$ProteinName,
#                                         msstats_dil_nofaims$PeptideSequence, sep = "_")
# msstats_ptm_dil_nofaims$ProteinName = paste(msstats_ptm_dil_nofaims$ProteinName,
#                                             msstats_ptm_dil_nofaims$PeptideSequence, sep = "_")
# 
# 
# PPTM_dil_nofaims <- list(PROTEIN=msstats_dil_nofaims, PTM=msstats_ptm_dil_nofaims)
# analyzed_data_dil_nofaims <- dataSummarizationPTM(
#   PPTM_dil_nofaims,
#   logTrans = 2,
#   normalization = FALSE,
#   normalization.PTM = FALSE,
#   nameStandards = NULL,
#   nameStandards.PTM = NULL,
#   featureSubset = "all",
#   featureSubset.PTM = "all",
#   remove_uninformative_feature_outlier = FALSE,
#   remove_uninformative_feature_outlier.PTM = FALSE,
#   n_top_feature = "all",
#   n_top_feature.PTM = "all",
#   summaryMethod = "TMP",
#   equalFeatureVar = TRUE,
#   censoredInt = "NA",
#   MBimpute = TRUE,
#   MBimpute.PTM = TRUE,
#   remove50missing = FALSE,
#   fix_missing = NULL,
#   use_log_file = TRUE,
#   append = TRUE,
#   verbose = TRUE,
#   log_file_path = NULL,
#   base = "MSstatsPTM_log_"
# )



summarized_data <- MSstats::dataProcess(msstats_dil_nofaims)
