make_round <- function(num_rounds, x_offset, x_length = 0.5){
  
  matchups_per_round <- (2^num_rounds)/2
  length <- x_length
  height <- 1/matchups_per_round
  y_offsets <- (0:(matchups_per_round - 1))*(height*2) + (0.5*height)
  
    
  df_round_specs <-
    tibble(
      length = length,
      height = height,
      x_offset = x_offset,
      y_offset = y_offsets
    )
  
  pmap(
    df_round_specs, 
    make_matchup
  )
  
}

make_round(2, 1)
