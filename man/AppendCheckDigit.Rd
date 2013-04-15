\name{AppendCheckDigit}
\alias{AppendCheckDigit}

\title{Append a check digit to a value}

\description{Append a check digit to a value}

\usage{AppendCheckDigit(x, method)}

\arguments{
  \item{x}{vector of values requiring a check digit}
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

\value{
  character vector similar to \code{x} but with a check digit appended to each
  value
}

\seealso{
  \code{\link{AppendCheckDigit}},
  \code{\link{CheckDigit-package}}
}

\examples{
AppendCheckDigit('1234', 'Verhoeff') # 12340
}
