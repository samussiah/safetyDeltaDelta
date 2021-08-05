#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
safetyDeltaDelta <- function(
    data,
    id_col = 'USUBJID',
    visit_col = 'VISIT',
    visit_order_col = 'VISITNUM',
    measure_col = 'TEST',
    measure_order_col = 'TESTN',
    value_col = 'STRESN',
    unit_col = 'STRESU',
    filters = NULL,
    details = NULL,
    measure = list(
        x = NULL,
        y = NULL
    ),
    visits =  list(
        timepoint1 = list(),
        timepoint2 = list(),
        stat = 'mean'
    ),
    add_regression_line = TRUE,
    custom_settings = NULL,
    width = NULL,
    height = NULL,
    elementId = NULL
) {
print(custom_settings)
    # Map R function arguments to list.
    settings <- NULL
    if (!is.null(custom_settings)) {
        settings = custom_settings
    } else {
        settings = list(
            id_col = id_col,
            visit_col = visit_col,
            visit_order_col = visit_order_col,
            measure_col = measure_col,
            measure_order_col = measure_order_col,
            value_col = value_col,
            unit_col = unit_col,
            filters = filters,
            details = details,
            measure = measure,
            visits =  visits,
            add_regression_line = add_regression_line
        )
    }
print(settings)
    # Define inputs to .js function: settings and data.
    inputs <- list(
        settings = settings,
        data = data
    )

    # Create widget.
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