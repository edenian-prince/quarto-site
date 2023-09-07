# ----- Read in Libraries ----- #
## ---- libraries
library(dplyr)
library(tibble)
library(ggplot2)
## ---- stop

# ----- Read in the File ----- #
## ---- read-chunk
(df <- airquality |>
  arrange(desc(Month)) |>
  as_tibble())
## ---- stop

# ----- Make a Plot ----- #
## ---- make-plot
(
  plot <- df |>
    ggplot() + 
    geom_point(aes(Ozone,Temp)) +
    facet_grid(~Month)
)
## ---- stop
