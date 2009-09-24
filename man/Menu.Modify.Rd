\name{Menu.Modify}
\alias{Menu.Modify}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Modifying designs }
\description{
  This help file describes the menu for modifying designs
}
%- maybe also 'usage' for other objects documented here.
\details{
  Freshly-generated designs do not have any responses. 
  For very small designs, response values can be added by using the data editor 
  within the \code{R-commander}. For larger designs, it is preferrable to do all editing 
  outside of \code{R} and re-combine response data with the structural information 
  using the \code{import} menu. It is also possible to add a response from a vector 
  or data frame within \code{R} by using the menu item \emph{Add response variable(s)}.
  
  Default analyses for experimental designs either work with all responses or with the first 
  response of the design. It can therefore be advantageous to delete responses from the list of responses. 
  This can be done with the menu item \emph{Change response variables}. At a later stage, one might want to 
  redefine previous response variables as responses. This is also possible via that menu. 
  
  Some designs come in long format (repeated measurements, some parameter designs) 
  but should be brought into wide format and aggregated for conducting simple analyses. 
  The reformatting can be done with the menu item \emph{Change from long to wide format}, 
  the subsequent aggregation with the menu item \emph{Aggregate design}.
  
  The menu item \emph{Fold design} (not yet implemented) will allow to augment 
  a 2-level factorial designs with a second 
  portion as large as the first one by reversing the levels of some or all factors. 
  
  The menu item \emph{Add center points} allows to add center points to 2-level designs 
  with only quantitative factors and certain further restrictions (e.g. no splitplot design). 
  
  The menu item \emph{Add star portion for central composite design} allows to add 
  a starpoints with center points to regular (fractional) factorial 2-level designs 
  with only quantitative factors and certain further restrictions (e.g. no splitplot design, 
  no estimability requirements). 
  
  The menu item \emph{Augment lhs design} allows to add additional points to latin 
  hypercube sample designs according to different types of augmentation rules 
  available in R-package \pkg{\link[lhs:lhs-package]{lhs}}.

  Note that command line use of the packages underlying this R-Commander routine is more 
  flexible and allows more tuning. 
  
}
\author{ Ulrike Groemping }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
