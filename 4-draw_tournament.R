draw_tournament <- function(num_rounds, ...){
  
  df_tournament <- make_tournament(num_rounds)
  
  # plot
  plt <- 
    df_tournament %>% 
    ggplot(
      aes(
        geometry = geometry
      )
    ) + 
    geom_sf() +
    theme_void()
  
  return(plt)
  
}