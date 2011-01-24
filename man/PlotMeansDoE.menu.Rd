\name{PlotMeansDoE.menu}
\alias{PlotMeansDoE.menu}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Menu for main effects and interaction plots for general factorial designs }
\description{The menu for main effects and interaction plots for general factorial designs
allows to plot individual main effects plots (one factor selected) or interaction plots (two factors selected).}
%- maybe also 'usage' for other objects documented here.

\section{Details}{

The menu calls the \pkg{Rcmdr} function \code{plotMeans} for creating simple
main effects or interaction plots for factorial designs. It is available whenever
the active data frame is an experimental design with at least one response that
has at least one factor (not a quantitative variable but a factor with categories).

Arithmetic means for any numeric variable can be plotted separately for the levels of
one factor (main effects plot) or the level combinations of two factors (interaction plot).
An interaction plot created by the menu always makes the factor with fewer levels
the legend factor. (This can only be changed by modifying the command in command line
programming.)

For designs with two-level factors only, the analogous menu for 2-level factors can do several plots
at once.

}

\author{ Ulrike Groemping }
\seealso{ See also \code{\link[Rcmdr]{plotMeans}} for
the underlying function }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
