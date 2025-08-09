#' theme_neo: A extensible simple but pretty production-ready ggplot theme
#'
#' A simple but pretty ggplot theme
#'
#' @param layout x lines design integer. It can be 4 to display both major and minor grids from x and y, 3 to display both major and minor x lines, 2 to display only major line, 1 to display only minor line and 0 to display none.
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
#'   theme_neo()
#inksave_color <- "#231f20"
inksave_color <- "#212121"
theme_neo <- function(layout = 2) {
  if(layout < 0 | layout > 4) {
    layout = 3
  }
  if(layout == 4) {
    theme_minimal() +
      theme(
        axis.text.y = element_text(margin = margin(16, 16, 16, 16), color = inksave_color),
        axis.text.x = element_text(margin = margin(16, 16, 16, 16), color = inksave_color),
        axis.title = element_text(face = "bold", color = inksave_color) ,
        plot.title = element_text(face = "bold", color = inksave_color),
        plot.subtitle = element_text(margin = margin(0, 0,16, 0), color = inksave_color),
        axis.line.y = element_line(color = inksave_color),
        axis.line.x = element_line(color = inksave_color),
        axis.ticks = element_line(color = inksave_color),
        panel.grid.major.y = element_line(color = "#d4d4d4"),
        panel.grid.minor.y = element_line(color = "#d4d4d4"),
        panel.grid.minor.x = element_line(color = "#d4d4d4"),
        panel.grid.major.x = element_line(color = "#d4d4d4"),
      )
  } else if(layout == 3) {
   theme_minimal() +
    theme(
      axis.text.y = element_text(margin = margin(16, 16, 16, 16), color = inksave_color),
      axis.text.x = element_text(margin = margin(16, 16, 16, 16), color = inksave_color),
      axis.title = element_text(face = "bold", color = inksave_color) ,
      plot.title = element_text(face = "bold", color = inksave_color),
      plot.subtitle = element_text(margin = margin(0, 0,16, 0), color = inksave_color),
      axis.line.y = element_line(color = inksave_color),
      axis.line.x = element_line(color = inksave_color),
      axis.ticks = element_line(color = inksave_color),
      panel.grid.major.y = element_line(color = "#d4d4d4"),
      panel.grid.minor.y = element_line(color = "#d4d4d4"),
      panel.grid.minor.x = element_blank(),
      panel.grid.major.x = element_blank(),
    )
  } else if(layout == 2) {
    theme_minimal() +
      theme(
        axis.text.y = element_text(margin = margin(16, 16, 16, 16), color = inksave_color),
        axis.text.x = element_text(margin = margin(16, 16, 16, 16), color = inksave_color),
        axis.title = element_text(face = "bold", color = inksave_color) ,
        plot.title = element_text(face = "bold", color = inksave_color),
        plot.subtitle = element_text(margin = margin(0, 0,16, 0), color = inksave_color),
        axis.line.y = element_line(color = inksave_color),
        axis.line.x = element_line(color = inksave_color),
        axis.ticks = element_line(color = inksave_color),
        panel.grid.major.y = element_line(color = "#d4d4d4"),
        panel.grid.minor.y = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.grid.major.x = element_blank(),
      )
  }
  else if(layout == 1) {
    theme_minimal() +
      theme(
        axis.text.y = element_text(margin = margin(16, 16, 16, 16), color = inksave_color),
        axis.text.x = element_text(margin = margin(16, 16, 16, 16), color = inksave_color),
        axis.title = element_text(face = "bold", color = inksave_color) ,
        plot.title = element_text(face = "bold", color = inksave_color),
        plot.subtitle = element_text(margin = margin(0, 0,16, 0), color = inksave_color),
        axis.line.y = element_line(color = inksave_color),
        axis.line.x = element_line(color = inksave_color),
        axis.ticks = element_line(color = inksave_color),
        panel.grid.major.y = element_blank(),
        panel.grid.minor.y = element_line(color = "#d4d4d4"),
        panel.grid.minor.x = element_blank(),
        panel.grid.major.x = element_blank(),
      )
  } else if(layout == 0) {
    theme_minimal() +
    theme(
      axis.text.y = element_text(margin = margin(16, 16, 16, 16), color = inksave_color),
      axis.text.x = element_text(margin = margin(16, 16, 16, 16), color = inksave_color),
      axis.title = element_text(face = "bold", color = inksave_color) ,
      plot.title = element_text(face = "bold", color = inksave_color),
      plot.subtitle = element_text(margin = margin(0, 0,16, 0), color = inksave_color),
      axis.line.y = element_line(color = inksave_color),
      axis.line.x = element_line(color = inksave_color),
      axis.ticks = element_line(color = inksave_color),
      panel.grid.major.y = element_blank(),
      panel.grid.minor.y = element_blank(),
      panel.grid.minor.x = element_blank(),
      panel.grid.major.x = element_blank(),
    )
  }

}
