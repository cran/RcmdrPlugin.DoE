\name{Menu.Inspect}
\alias{Menu.Inspect}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Inspecting the active design}
\description{
  This help file describes the menu for inspecting the active design
}
%- maybe also 'usage' for other objects documented here.
\details{
  This menu offers possibilities for inspecting a designs properties. 
  It is not meant to analyse data but to look at the structure of a design.
  
  The menu item \emph{Display active design} prints the current design.\cr
  The menu item \emph{Summarize active design} prints a summary of the current design, 
  based on the \code{\link[DoE.base:summary.design]{summary}} method for 
  class \code{\link[DoE.base:class-design]{design}}.\cr
  The menu item \emph{Plot active design ...} plots selected experimental factors of the current design, 
  based on the \code{\link[DoE.base:plot.design]{plot}} method for 
  class \code{\link[DoE.base:class-design]{design}}, applied to the design stripped 
  of any responses. \cr
  The menu item \emph{Tabulate active design ...} tabulates selected experimental factors 
  of the current design.\cr 
  
  Plotting and tabulating are particularly interesting for designs with qualitative factors, 
  and when looking at three or four 
  factors at a time, because this highlights factor combinations that do not occur 
  or do not occur equally often. 
  Ideally (generalized resolution IV), each projection onto three factors is a full factorial, 
  which is equivalent to zero words of generalized length 3 (the analogous request 
  for projections onto four factors corresponds to generalized resolution V).\cr

  Note that the menu items are available only, if the active data frame is a class 
  \code{\link[DoE.base:class-design]{design}} object. 
  
}
\author{ Ulrike Groemping }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
