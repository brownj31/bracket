make_matchup <- function(length = 0.5, height = 1, x_offset = 0, y_offset = 0){
  
  tribble(
    ~x,                   ~y,
    x_offset,             y_offset + height,
    x_offset + length,    y_offset + height,
    x_offset + length,    y_offset,
    x_offset,             y_offset
  ) %>% 
    as.matrix() %>% 
    st_linestring(dim = 'XY')
  
}
