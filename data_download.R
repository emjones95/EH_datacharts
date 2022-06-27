## Downloading happiness and wellbeing data
# Elliot Jones, June 2022 

# Start by clearing your environment and console
rm(list = ls())
cat("\014")

# load the packages that we need 
library(rvest) #used for scraping
library(readxl) #useful for reading in a spreadsheet

# 2022 World Happiness Report 
url1 <- "https://happiness-report.s3.amazonaws.com/2022/Appendix_2_Data_for_Figure_2.1.xls"
download.file(url1, destfile = "raw_data/whr22_rank.xls")

# 2021 World Happiness Report 
url2 <- "https://happiness-report.s3.amazonaws.com/2021/DataForFigure2.1WHR2021C2.xls"
download.file(url2, destfile = "raw_data/whr21_rank.xls")

url3 <- "https://happiness-report.s3.amazonaws.com/2021/DataPanelWHR2021C2.xls"
download.file(url3, destfile = "raw_data/whr21_panel_data.xls")

# 2020 World Happiness Report
url4 <- "https://happiness-report.s3.amazonaws.com/2020/WHR20_DataForFigure2.1.xls"
download.file(url4, destfile="raw_data/whr20_rank.xls")

url5 <- "https://happiness-report.s3.amazonaws.com/2020/WHR20_DataForTable2.1.xls"
download.file(url5, destfile="raw_data/whr20_panel_data.xls")

# read in the data
whr22_rank <- read_excel("raw_data/whr22_rank.xls")
whr21_rank<- read_excel("raw_data/whr21_rank.xls")
whr21_panel_data <- read_excel("raw_data/whr21_panel_data.xls")
whr20_rank <- read_excel("raw_data/whr20_rank.xls")
whr21_panel_data <- read_excel("raw_data/whr20_panel_data.xls")

# ONS wellbeing data for the United Kingdom
url4 <- "https://download.ons.gov.uk/downloads/datasets/wellbeing-quarterly/editions/time-series/versions/4.xlsx"
download.file(url4, destfile="raw_data/ons_data.xlsx")

# read in the data
ons_data <- read_excel("raw_data/ons_data.xlsx", skip = 2)