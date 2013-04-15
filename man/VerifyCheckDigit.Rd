\name{VerifyCheckDigit}
\alias{VerifyCheckDigit}

\title{Verify whether a value ends with a valid check digit}

\description{Verify whether a value ends with a valid check digit}

\usage{VerifyCheckDigit(x, method)}

\arguments{
  \item{x}{vector of values to verify}
  \item{method}{a character value naming the check digit algorithm to use}
}

\details{
  See \code{\link{CheckDigit-package}} for a list of available \code{method}s.

  Note that this function coerces numeric values of \code{x} to character. For
  numbers with fewer than 16 significant digits, this should not cause any
  problems. However, numbers with more than 15 significant digits lose precision
  when coerced to character and may yield an incorrect check digit. To avoid
  this, you are encouraged to pass \code{x} as a character vector. See
  \code{\link{as.character}} for more details.
}

\value{logical vector the same length as \code{x}}

\seealso{
  \code{\link{AppendCheckDigit}},
  \code{\link{CheckDigit-package}}
}

\examples{
VerifyCheckDigit('12340', 'Verhoeff')  # TRUE
VerifyCheckDigit('21340', 'Verhoeff')  # FALSE
VerifyCheckDigit('13240', 'Verhoeff')  # FALSE
VerifyCheckDigit('12430', 'Verhoeff')  # FALSE
VerifyCheckDigit('12304', 'Verhoeff')  # FALSE
}
