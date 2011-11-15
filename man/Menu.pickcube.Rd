\name{Menu.pickcube}
\alias{Menu.pickcube}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Pick the cube portion from a central composite design}
\description{
  This help file describes how to use the menu for picking the cube portion from a central composite design.
}
%- maybe also 'usage' for other objects documented here.
\details{
  Specify the name of the new cube only design (default: name of active design with 
  \code{.cubeonly} appended), and press OK. The resulting reduced design can be used 
  for effects plots of the cube portion etc. This is especially useful, if the star point 
  response values are not yet available, and preliminary analyses are to be run.
  
  NOTE: If the intention is sequential experimentation (as is often the case), it is 
  usually more desirable to first specify a standalone cube with center points and analyze 
  that design, and to only append a star portion later, if needed. \cr
  While subsequent reduction of a central composite design to its cube portion 
  does work for many purposes, the resulting design is not as clean as a cube portion 
  created from scratch; for example, augmenting it with a star portion again will fail. 
  (This could of course be fixed, but this fix has low priority.)

  WARNING: Package \pkg{RcmdrPlugin.DoE} has been subjected to some testing, but 
  must still be considered a beta version. It is strongly recommended 
  to \bold{always keep a master copy of your valuable experimental 
  data safely stored without touching it}. (This would even hold for a final version of 
  any software, but is of course far more important for a beta version.
}
\seealso{ See also function \code{\link[DoE.base]{pickcube}} for the 
  function that does the work}
\author{ Ulrike Groemping }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
