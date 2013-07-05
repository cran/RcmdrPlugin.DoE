\name{Menu.steepest}
\alias{Menu.steepest}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Using the steepest slope menu}
\description{
  This help file describes usage of the steepest slope menu.
}
\usage{
  Menu.steepest() 
}
%- maybe also 'usage' for other objects documented here.
\details{
  This help file describes usage of the steepest slope menu 
  for response surface models. 
  The menu is only available 
  if there is an rsm model available with at least one response.
  
  It is necessary to select the model (as rsm models cannot be 
  active models in R Commander). The default degree is 2, but 
  1 is also possible. 
  
  The checkbox provides a switch between classical steepest ascent 
  in first order models (start in the middle) 
  or models that are almost linear with far out optima (start in a saddle point). 
  The latter option is reasonable for second order models, 
  for which the Hessian reveals that there is 
  still room for improvement = the stationary point is a nearby saddle point, 
  it is more appropriate to try increasing (decreasing) the response starting 
  at that saddle point and walking into both directions.

}
\author{ Ulrike Groemping }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
