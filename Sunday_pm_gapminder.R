# This is a script to explore the gapminder dataset using R
# Xavier G Aranda
# xgaranda@hotmail.com
# April 19, 2015

#Install dplyr package and dependencies
#install.packages("dplyr", dependencies = TRUE)

#Load dplyr library into working environment
library("dplyr")

#Read in data as tab-delimited
gap.in <- read.table("output/combined_gapMinder.tsv", 
                     sep = "\t",
                     header = TRUE)

gap.in %>%
  filter(country == "China") %>%
  select(country, year, pop) %>%
  group_by(country) %>%
  summarize(min = min(pop))

#Challange
#Calculate the mean population for contenient per year for years prior to 1990

gap.in %>%
  filter(year < 1990) %>%
  select(continent, year, pop) %>%
  group_by(continent, year) %>%
  summarize(mean = mean(pop)) %>%
  as.data.frame

attach(iris)
# install tidyr package
install.packages("tidyr", dependencies = TRUE)
#load library
library("tidyr")

#turn iris dataset form wide into long format

iris.long <- gather(iris, "Measurement", "Value", 1:4)

