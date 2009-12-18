\name{Menu.Analyze}
\alias{Menu.Analyze}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Analyze experimental designs}
\description{This is a brief explanation on the analysis faciliteis for experimental designs 
in the Analyze Design menu.}
%- maybe also 'usage' for other objects documented here.

\section{Available analysis options}{

\bold{Generally applicable analysis options}\cr
The topmost menu entry \emph{Default linear model} is of interest for all design types 
and is usable whenever the active dataset is a design with response. 
However, the default linear model analysis does not work 
for long version designs with repeated measurements or for parameter designs in long format, 
as it usually does not make sense in such situations. Rather, such designs should be brought into 
wide format by using the \cr
\code{Design --> Combine or Modify Designs --> Change from long to wide format}\cr
menu.

Note that the default linear model analysis is a quick 
first shot that should often be tuned and sometimes (e.g. in many cases splitplot designs) replaced 
by a different analysis strategy for serious modelling. Tuning can be 
done by using the built-in linear model functions from the R-Commander Analyze menu. 
The R-Commander Models menu also offers interesting options for subsequent 
model diagnostics and graphics.

\bold{Analysis options specific to 2-level designs}\cr
There are two types of orthogonal 2-level factorial designs, 
regular fractional factorial designs and screening designs. 
The latter has more interesting analysis options than the former.

Effects plots and main effects plots are of interest for both types of 2-level 
designs alike, while interaction plots are usually of interest for the regular designs only.

Note that the interpretation of all effects plots, main effects and interaction plots 
is useful only in connection with knowledge about the alias structure of a design. 
For regular designs, this can e.g. be obtained from the \emph{Summarize design} 
menu item within the \emph{Inspect design} sub menu of the \emph{Design} menu. 
For screening designs, if it can be assumed that interactions are likely to be 
much less important than main effects, the main effect plots may be interpretable 
without such thoughts. Considerations involving the interactions become quite complicated 
with screening designs because of partial aliasing. 
Advanced users might also want to try the Bayesian methods 
offered in package \code{\link[BsMD]{BsMD-package}}, which are currently not implemented 
in \pkg{RcmdrPlugin.DoE}. 

\bold{Analysis options specific to designs with quantitative factors}\cr
have not been implemented for the GUI version yet. They are available within R-package 
\pkg{\link[rsm:rsm-package]{rsm}} for the classical response surface designs.
}


\references{ 
    Box G. E. P, Hunter, W. C. and Hunter, J. S. (2005) 
    \emph{Statistics for Experimenters, 2nd edition}.
    New York: Wiley.
 }
\author{ Ulrike Groemping }
\seealso{ See also \code{\link[DoE.base:class-design-methods]{summary.design}} for 
how designs are summarized, \code{\link[DoE.base]{formula.design}} 
for the function that creates the default linear model formula, or 
\code{\link[FrF2]{DanielPlot}}, \code{\link[FrF2:IAPlot]{MEPlot}} and \code{\link[FrF2]{IAPlot}} 
for the functions behind the graphical analysis tools for 2-level factors. 
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
