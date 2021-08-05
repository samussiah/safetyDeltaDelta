#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
safetyDeltaDelta <- function(settings, data, width = NULL, height = NULL, elementId = NULL) {
    inputs <- list(
        settings = settings,
        data = data
    )

    # create widget
    htmlwidgets::createWidget(
        name = "safetyDeltaDelta",
        inputs,
        width = width,
        height = height,
        package = "safetyDeltaDelta",
        elementId = elementId
    )
}

#' Shiny bindings for safetyDeltaDelta
#'
#' Output and render functions for using safetyDeltaDelta within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'     \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'     string and have \code{'px'} appended.
#' @param expr An expression that generates a safetyDeltaDelta
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'     is useful if you want to save an expression in a variable.
#'
#' @name safetyDeltaDelta-shiny
#'
#' @export
safetyDeltaDeltaOutput <- function(outputId, width = "100%", height = "400px") {
    htmlwidgets::shinyWidgetOutput(outputId, "safetyDeltaDelta", width, height, package = "safetyDeltaDelta")
}

#' @rdname safetyDeltaDelta-shiny
#' @export
renderSafetyDeltaDelta <- function(expr, env = parent.frame(), quoted = FALSE) {
    if (!quoted) {
        expr <- substitute(expr)
    } # force quoted
    htmlwidgets::shinyRenderWidget(expr, safetyDeltaDeltaOutput, env, quoted = TRUE)
}
