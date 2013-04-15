VerifyCheckDigit <- function(x, method) {
    FUN <- sprintf('VerifyCheckDigit.%s', method)
    if (exists(FUN) && is.function(get(FUN))) {
        eval(call(FUN, x))
    } else {
        stop(sprintf('Method "%s" has not been implemented.', method))
    }
}
