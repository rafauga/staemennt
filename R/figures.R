library(ggplot2)

teikna_reiti <- function(n, m, h = 2) {
  df <- data.frame(
    xmin = c(0, n),
    xmax = c(n, n + m),
    ymin = 0,
    ymax = h
  )
  
  ggplot() +
    geom_rect(
      data = df,
      aes(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax),
      fill = "steelblue1", 
      colour = "black"
    ) +
    annotate("text", x = n / 2, y = h + 0.3, label = "x", size = 4) +
    annotate("text", x = n + m / 2, y = h + 0.3, label = m, size = 4) +
    annotate("text", x = -0.3, y = h / 2, label = h, size = 4) +
    coord_fixed() +
    theme_void()
}