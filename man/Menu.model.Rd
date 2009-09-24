\name{Menu.model}
\alias{Menu.model}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Using the linear model menu}
\description{
  This help file describes usage of the linear model menu.
}
\usage{
  Menu.model() 
}
%- maybe also 'usage' for other objects documented here.
\details{
  This help file describes usage of the linear model menu. 
  The menu is only available 
  if at least one (object of class) design exists in the R workspace.
  Selecting a different than the active design changes the active design.
  
  The default NULL for the degree will use the default polynomial degree from function 
  \code{\link[DoE.base]{formula.design}}. 
  
  The menu opens the standard model selection menu for linear models that 
  is available in R-Commander, providing a convenient starting formula.
}
\author{ Ulrike Groemping }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
