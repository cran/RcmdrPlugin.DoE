\name{Menu.changecontr}
\alias{Menu.changecontr}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Help on using the menu for changing contrasts}
\description{Help on using the menu for changing contrasts}
%- maybe also 'usage' for other objects documented here.
\section{Help on using the menu for changing contrasts}{
  This menu allows to change contrasts for one or more factors.
  Contrary to R-Commanders native contrast changing function, 
  it simultaneously treats the matrix \code{desnum} for the \code{design} object, 
  so that the integrity of the class \code{\link[DoE.base:class-design]{design}} 
  object is maintained. 
  Furthermore, it uses the contrast functions from base R rather than 
  those from package \pkg{car}.
  
  One or more factors can be selected from the list on the left and 
  moved to the list on the right. On OK, all factors from the RHS list 
  are assigned the chosen contrast.
  
  Note that the default contrast setting is \dQuote{Treatment (dummy) coding}, 
  regardless of the current factor coding.
}

\seealso{See also \code{\link[DoE.base]{change.contr}} for the function 
that does the work}
\author{ Ulrike Groemping }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
