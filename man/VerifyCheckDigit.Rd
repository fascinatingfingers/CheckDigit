\name{VerifyCheckDigit}
\alias{VerifyCheckDigit}

\title{Verify whether a value ends with a valid check digit}

\description{Verify whether a value ends with a valid check digit}

\usage{VerifyCheckDigit(x, method)}

\arguments{
  \item{x}{character vector of values to verify}
  \item{method}{a character value naming the check digit algorithm to use}
}

\details{
  See \code{\link{CheckDigit-package}} for a list of available \code{method}s.
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
