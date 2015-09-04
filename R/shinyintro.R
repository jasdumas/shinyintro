#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
shinyintro <- function(message, width = NULL, height = NULL) {

  # forward options using x
  x = list(
    message = message
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'shinyintro',
    x,
    width = width,
    height = height,
    package = 'shinyintro'
  )
}

#' Widget output function for use in Shiny
#'
#' @export
shinyintroOutput <- function(outputId, width = '100%', height = '400px'){
  shinyWidgetOutput(outputId, 'shinyintro', width, height, package = 'shinyintro')
}

#' Widget render function for use in Shiny
#'
#' @export
renderShinyintro <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, shinyintroOutput, env, quoted = TRUE)
}
