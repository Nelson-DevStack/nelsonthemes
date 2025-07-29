#' theme_neo_x - A simple but pretty production ready ggplot theme
#'
#' @returns A ggplot theme object
#' @export
#'
#' @examples
#' require(ggplot2)
#' ggplot(mtcars, aes(x=  factor(gear))) +
#' geom_bar() +
#'   scale_y_continuous(
#'     expand = expansion(c(0, 0.5))
#'   ) +
#'   geom_text(
#'     stat="count",
#'     aes(label = after_stat(count)),
#'     vjust = -0.5
#'   ) +
#'   labs(
#'     title = "mtcars",
#'     subtitle = "Gear count"
#'   ) +
#'   theme_neo_x()
theme_neo_x <- function() {
  theme_minimal() +
  theme(
    axis.text.y = element_text(margin = margin(16, 16, 16, 16), color = "#313131"),
    axis.text.x = element_text(margin = margin(16, 16, 16, 16), color = "#313131"),
    axis.title = element_text(face = "bold") ,
    plot.title = element_text(face = "bold"),
    plot.subtitle = element_text(margin = margin(0, 0,16, 0)),
    axis.line.y = element_blank(),
    axis.line.x = element_line(color = "#313131"),
    axis.ticks.x = element_line(color = "#313131"),
    axis.ticks.y = element_blank(),
    panel.grid.minor.y = element_blank(),
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank()
  )

}
