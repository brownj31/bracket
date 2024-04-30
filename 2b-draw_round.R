# build sf
num_rounds <- 1

df_lines <- 
  tibble(
    geometry = 
      st_sfc(
        make_round(2, 0)
      )
  )

# plot
plt <- 
  df_lines %>% 
    ggplot(
      aes(
        geometry = geometry
      )
    ) + 
    geom_sf()

print(plt)
