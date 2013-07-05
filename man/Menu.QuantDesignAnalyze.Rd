\name{Menu.QuantDesignAnalyze}
\alias{Menu.QuantDesignAnalyze}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Analyze designs for quantitative factors}
\description{This is a brief explanation on the menu for analysis of designs for quantitative factors.}
%- maybe also 'usage' for other objects documented here.

\section{Available analysis options}{
The menu item \emph{Response surface model ...} creates a response surface 
analysis with first order (FO) terms, and potentially also two-factor interactions 
(TWI) and/or pure quadratic (PQ) terms. The resulting object has class \code{\link[rsm]{rsm}} 
and can be postprocessed with the subsequent menu items.

The menu item \emph{Steepest slope ...} supports moving the experimental range 
towards a more promising area, based on a first order model or on a second order 
model with a saddle point.

The menu item \emph{Plot response surface ...} supports creation of contour, 
perspective or image plots of a response surface model, 
and can also be used for linear models with quantitative variables.

It is of course also possible to use other analysis facilities within the R-commander, 
or to use the command-line facilities offered in package \code{\link[rsm:rsm-package]{rsm}}
and elsewhere.
}


\references{ 
    Box G. E. P, Hunter, W. C. and Hunter, J. S. (2005) 
    \emph{Statistics for Experimenters, 2nd edition}.
    New York: Wiley.
 }
\author{ Ulrike Groemping }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
