\name{Menu.importrdacsv}
\alias{Menu.importrdacsv}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Re-importing an exported design with the R-Commander}
\description{
  This help file describes how to re-import an exported design 
  that exists as an rda and a csv file, when using the R-Commander.
}
%- maybe also 'usage' for other objects documented here.
\details{
  A design has usually been exported in order to input the response data 
  outside of R. This is also the recommended strategy. 
  
  The re-importing supports the addition of responses that are available in a csv file
  to the class \code{\link[DoE.base:class-design]{design}} data frame in the saved rda file.
  Usage of this menu also works, if the design is already present in the R workspace. 
  In this case, it is not necessary to first load an rda file.
    
  Simply provide a valid file name for the combined design, \cr
  select the rda file, \cr
  if necessary, select the correct design from the drop-down, \cr
  select the csv file, \cr
  adjust the decimal separator to the one used in the csv file, \cr
  and press OK.
  
  NOTE: If the response data are not in a csv file, they can be imported from all kinds 
  of other file formats using from R commanders data management menu. The menu \emph{Design} 
  offers the sub menu \emph{Modify Designs} with the \emph{Add responses} menu item 
  for this purpose.
}
\author{ Ulrike Groemping }
\seealso{ See also function \code{\link[DoE.base]{add.response}} for the function 
  that does the work }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
