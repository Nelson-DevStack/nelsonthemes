#' theme_neo_x: A simple but pretty production ready ggplot theme (x-axis)
#'
#' A recommended for time series simple but pretty production ready ggplot theme
#'
#' @returns A ggplot theme object
#' @export
#'
#' @examples
#' library(nelsonthemes)
#' library(ggplot2)
#'
#' # Converting nhtemp time series object to data frame
#' nhtemp <- data.frame(nhtemp = nhtemp, year = 1912:1971)
#'
#' # Time Series/Line chart
#' ggplot(nhtemp, aes(y = nhtemp, x = year)) +
#'   geom_line() +
#'   theme_neo_x() +
#'   labs(
#'     title = "Average Yearly Temperatures in New Haven",
#'     subtitle = "New Haven, Connecticut (1912-1971)",
#'     x = "Year",
#'     y = "Temperature"
#'   )
inksave_color <- "#212121"
theme_neo_x <- function() {
  theme_minimal() +
  theme(
    axis.text.y = element_text(margin = margin(16, 16, 16, 16), color = inksave_color),
    axis.text.x = element_text(margin = margin(16, 16, 16, 16), color = inksave_color),
    axis.title = element_text(face = "bold", color = inksave_color) ,
    plot.title = element_text(face = "bold", color = inksave_color),
    plot.subtitle = element_text(margin = margin(0, 0,16, 0), color = inksave_color),
    axis.line.y = element_blank(),
    axis.line.x = element_line(color = inksave_color),
    axis.ticks.x = element_line(color = inksave_color),
    axis.ticks.y = element_blank(),
    panel.grid.minor.y = element_blank(),
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank()
  )

}
