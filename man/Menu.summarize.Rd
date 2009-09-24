\name{Menu.summarize}
\alias{Menu.summarize}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Using the summarize menu}
\description{
  This help file describes summarizing a design that is already in the R 
  workspace but is not necessarily the currently active data set.
}
%- maybe also 'usage' for other objects documented here.
\details{
  This help file describes summarizing a design that is already in the R 
  workspace but is not necessarily the currently active data set.
  The menu is only available 
  if at least one (object of class) design exists in the R workspace.
  
  Select the design from the drop-down list of available designs. 
  If a plot or a table is wanted, check the respective check box.
  On pressing OK, a printed summary and - if requested - a simply-structured table 
  are generated, and - again if requested - the design is plotted. 
  For details on the functions behind these activities, see 
  \code{\link[DoE.base:class-design-methods]{summary.design}}, 
  \code{\link[base]{table}}, and \code{\link[DoE.base:class-design-methods]{plot.design}}. 
  
  The tables and plots from this menu will only be useful for very small designs. 
  For obtaining more tailored tables, using the \dQuote{Contingency Tables} dialogue 
  from the \code{Analyze} menu. 
  For different types of plots, the \code{Graphics} menu has some offerings.
  
}
\author{ Ulrike Groemping }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
