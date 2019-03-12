
#' Append a check digit to a value
#'
#' @param x character vector of values requiring a check digit
#' @param method a character value naming the check digit algorithm to use
#'
#' @return character vector similar to `x` but with a check digit appended to
#'   each value
#'
#' @examples
#' AppendCheckDigit('1234', 'Verhoeff') # 12340
#'
#' @export
AppendCheckDigit <- function(x, method) {
    stopifnot(is.character(x) & is.character(method) & length(method) == 1)

    FUN <- sprintf('AppendCheckDigit.%s', method)

    if (exists(FUN) && is.function(get(FUN))) {
        eval(call(FUN, x))
    } else {
        stop(sprintf('Method "%s" has not been implemented.', method))
    }
}
