#' @import htmlwidgets
#' @export

intro <- function(id, width = NULL, height = NULL) {

  # take given id and turn it into and HTML format for class
  # which corresponds to the specific feature for the intro
  data <- paste("input", ".", id, sep ="")


  # pass the data using x
  x <- list(
    data = data
  )

  # create the widget
  htmlwidgets::createWidget("intro", x, width = width, height = height)
}
