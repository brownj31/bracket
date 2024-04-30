setwd('C:/Users/s344344/Downloads/bracket/')

library(tidyverse)
library(sf)

num_rounds <- 3

source('1-make_matchup.R')
source('2-make_round.R')
source('3-make_tournament.R')
source('4-draw_tournament.R')

make_tournament(num_rounds)
draw_tournament(num_rounds)

