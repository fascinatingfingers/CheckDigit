\name{AppendCheckDigit}
\alias{AppendCheckDigit}

\title{Append a check digit to a value}

\description{Append a check digit to a value}

\usage{AppendCheckDigit(x, method)}

\arguments{
  \item{x}{character vector of values requiring a check digit}
  \item{method}{a character value naming the check digit algorithm to use}
}

\details{
  See \code{\link{CheckDigit-package}} for a list of available \code{method}s.
}

\value{
  character vector similar to \code{x} but with a check digit appended to each
  value
}

\seealso{
  \code{\link{VerifyCheckDigit}},
  \code{\link{CheckDigit-package}}
}

\examples{
AppendCheckDigit('1234', 'Verhoeff') # 12340
}
