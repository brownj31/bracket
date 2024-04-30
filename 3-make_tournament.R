make_tournament <- function(num_rounds, x_offset = 0.5){
  
  browser()

  rounds_to_combine <- 1:num_rounds
  x_offsets <- seq(to = 0, from = (num_rounds - 1)*x_offset, by = -1*x_offset)
  
  df_tourney_specs <- 
    tibble(
      num_rounds = rounds_to_combine,
      x_offset = x_offsets
    )
  
    pmap(df_tourney_specs, make_round) %>%
      list_flatten() %>% 
      st_sfc() %>% 
      st_sf()

}
