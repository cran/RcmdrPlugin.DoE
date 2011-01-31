\name{Menu.DoptTab1}
\alias{Menu.DoptTab1}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Basic information for creation of D-optimal Designs }
\description{Basic information for creation of D-optimal designs;
    this menu has been created in August 2010 and is still 
    experimental. Please report issues for helping improve the software.}
\section{Brief statistical background}{
  D-optimal designs are useful for generating the design points such 
  that they are efficient for estimation of the parameters of a pre-specified 
  model. 
  
  For more information, look at the help file for function 
  \code{\link[DoE.wrapper]{Dopt.design}} from package \pkg{DoE.wrapper} 
  or at \code{\link[AlgDesign]{optFederov}} from package \pkg{AlgDesign}. 
}
\section{Inputs on Tab Base Settings}{
\describe{
\item{name of design}{must be a valid name. The design itself is created under 
     this name in the R workspace. }
\item{Determine the candidate design}{An existing design can be selected, 
     or a new design can be generated; \cr
     the candidate design is a large design from which the D-optimal design 
     is selected. }
\item{Specify model}{formula of the model for which an optimum design is sought}
\item{Specify constraints}{constraint condition(s) on the design variables; for example, 
     if several factors refer to sizes, it may not be possible to combine 
     all settings (e.g. under space restrictions);\cr
     See \code{\link[base]{Syntax}} and \code{\link[base]{Logic}} 
        for an explanation of the syntax of general and especially logical 
        R expressions. }
\item{nRepeat}{number of independent repeats for optimization; \cr
     increasing this number increases search time, but also the chances to 
     find a global optimum}
\item{seed}{can be provided for reproducing an existing design. }
\item{randomization}{can be switched off in exceptional situations. Usually, one would not want to do that. 
      Note that the checkbox here refers to the optimization process only. 
      For the candidate set, this can also be decided on the respective separate menu.}
}
}

\author{ Ulrike Groemping }
\seealso{ See also function \code{\link[DoE.wrapper]{Dopt.design}} for the function 
from \pkg{DoE.wrapper} that creates the design, which in turn is based on 
function \code{\link[AlgDesign]{optFederov}} from package 
\pkg{AlgDesign}. }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
