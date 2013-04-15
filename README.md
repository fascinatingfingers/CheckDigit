
CheckDigit
==========

The CheckDigit package provides a set of functions to calculate check digits
according to various algorithms and to verify whether a value ends in a valid
check digit.

The following algorithms have been implemented:

- **Verhoeff** The Verhoeff algorithm is appropriate for numerical data and detects
  all single-digit substitutions (x to y) and adjacent digit transpositions (xy
  to yx). In addition, the Verhoeff check digit can detect most twin errors (xx
  to yy), jump twin errors (xyx to zyz), jump transpositions (xyz to zyx), and
  phonetic errors (\sQuote{sixty} to \sQuote{sixteen}).

References
----------

Verhoeff, J. "Error Detecting Decimal Codes", Mathematical Centre Tract 29, The
Mathematical Centre, Amsterdam, 1969.
