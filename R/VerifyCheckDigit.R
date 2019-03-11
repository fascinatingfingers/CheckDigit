
#' Verify whether a value ends with a valid check digit
#'
#' @param x character vector of values to verify
#' @param method a character value naming the check digit algorithm to use
#'
#' @return logical vector the same length as `x`
#'
#' @examples
#' VerifyCheckDigit('12340', 'Verhoeff')  # TRUE
#' VerifyCheckDigit('21340', 'Verhoeff')  # FALSE
#' VerifyCheckDigit('13240', 'Verhoeff')  # FALSE
#' VerifyCheckDigit('12430', 'Verhoeff')  # FALSE
#' VerifyCheckDigit('12304', 'Verhoeff')  # FALSE
#'
#' @export
VerifyCheckDigit <- function(x, method) {
    stopifnot(is.character(x) & is.character(method) & length(method) == 1)

    FUN <- sprintf('VerifyCheckDigit.%s', method)

    if (exists(FUN) && is.function(get(FUN))) {
        eval(call(FUN, x))
    } else {
        stop(sprintf('Method "%s" has not been implemented.', method))
    }
}
