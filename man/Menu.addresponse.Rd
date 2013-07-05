\name{Menu.addresponse}
\alias{Menu.addresponse}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Adding (a) response(s) to an existing design}
\description{
  This help file describes how to use the menu for adding (a) response(s).
}
%- maybe also 'usage' for other objects documented here.
\details{
  Select a design (default: active design) and decide, whether existing response 
  data are to be replaced (useful e.g. if existing response contains missing values 
  that are to be overwritten).
  
  Decide whether response data are already in R or are available from a \code{csv} file. 
  In the latter case, changing the working directory is possible (but not necessary).
    
  If the response data are already in R or are to be calculated, fill in the appropriate 
  information in the entry field for the response (for playing with random data, 
  this could e.g. be \code{rnorm(8)}). Otherwise, select a csv file and choose the 
  correct decimal setting. The chosen decimal setting will become the default also 
  for other menus that require a decimal setting.
  
  Finally, provide a valid file name for the modified design.
  
  NOTE: If the response data are not in a csv file, they can be imported from all kinds 
  of other file formats using from R commanders data management menu. The menu \emph{Design} 
  offers the sub menu \emph{Modify Designs} with the \emph{Add responses} menu item 
  for this purpose.

  WARNING: Package \pkg{RcmdrPlugin.DoE} has been subjected to some testing, but 
  must still be considered a beta version. Especially for data handling routines like 
  adding responses, importing csv files and the like, 
  it is strongly recommended to \bold{always keep a master copy of your valuable experimental 
  data safely stored without touching it}. (This would even hold for a final version of 
  the any software, but is of course far more important for a beta version.
}
\seealso{ See also function \code{\link[DoE.base]{add.response}} for the 
  function that does the work}
\author{ Ulrike Groemping }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
