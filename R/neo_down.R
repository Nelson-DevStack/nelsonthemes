#' neo_down: Attach plot area to bottom (down)
#'
#' This function is useful to attach your plot data to the bottom (x line).
#'
#' @param add float value of additive range expansion constants. The default value is 0.25. Recommended parameter value: 0.5.
#'
#' @returns A ggplot scale_y_continuous object
#' @export
#'
#' @examples
#' ggplot(iris, aes(x = Sepal.Length)) +
#' geom_bar(stat = "count") +
#'   labs(
#'     title = "Histogram of Iris dataset",
#'     subtitle = "Variable: Sepal Length",
#'     x = "Sepal Length",
#'     y = "Count"
#'   ) +
#'   neo_down()
#'
neo_down <- function(add = 0.25) {
  scale_y_continuous(
    expand = expansion(c(0, add))
  )
}
