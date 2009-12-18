\name{Menu.IAPlot}
\alias{Menu.IAPlot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Help on using the menu for 2-level main effects and interaction plots}
\description{Using the menu for 2-level main effects and interaction plots}
%- maybe also 'usage' for other objects documented here.
\section{Using the menu for 2-level main effects and interaction plots}{
  Select the response that is to be analysed.\cr
  Select the factors whose main effects or interactions are to be plotted 
  (at least two factors are needed even for main effects).\cr
  Decide with the radio buttons, whether a main effects plot or an interaction plot is needed.\cr
  Select the abbreviation length for factor names from a list of lengths (Often the default will be OK).\cr
  For interaction plots, indicate whether confounding should be shown in the plot. 
  The default is to show confounding, if confounded interactions are present.
}
\section{Interpreting the alias information in the interaction plots}{
  If alias information is shown, each plot has a number. 
  Plots with identical numbers are based on the same effect estimate, i.e. 
  they are confounded. This means that the displayed interaction is the sum 
  of all the confounded interactions - they can either work into the same 
  direction or into opposite directions, or most of them are negligible and 
  one is dominating or ...
}
\seealso{See also \code{\link[FrF2]{MEPlot}} and \code{\link[FrF2]{IAPlot}} 
for the underlying functions for main effects and interaction plots.}
\author{ Ulrike Groemping }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
