\name{Menu.param}
\alias{Menu.param}
%- Also NEED an '\alias' for EACH other topic documented here.
\usage{
Menu.param()
}
\title{Help on using the menu for Taguchi inner-outer array designs}
\description{Using the menu for Taguchi inner-outer array designs}
%- maybe also 'usage' for other objects documented here.
\section{Using the menu for Taguchi inner-outer array designs}{
  The menu is available only, if there are at least two designs.

  Provide a name for the new design.\cr
  Choose an inner array and an outer array.\cr 
  Decide on long or wide format.
  
  WARNING: Currently, the functionality works well for standard situations only. 
  Whenever there are variables other than the factors in either of the designs 
  (even a block variable), problems are likely to occur at least for the 
  wide version designs. This will be worked on, but not top priority.
}

\seealso{See also \code{\link[DoE.base]{param.design}} for the underlying function}
\author{ Ulrike Groemping }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
