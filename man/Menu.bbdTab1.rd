\name{Menu.bbdTab1}
\alias{Menu.bbdTab1}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Basic information for Box-Behnken designs }
\description{Basic information for Box-Behnken designs }
\section{Brief statistical background}{
  Box-Behnken designs have three levels in all factors 
  and are useful for fitting second order polynomials to experimental data 
  based on several quantitative response variables. 
  For more information, look at 
  the help file for function \code{\link[DoE.wrapper]{bbd.design}} from package \pkg{DoE.wrapper} 
  or at \code{\link[rsm]{bbd}} from package \pkg{rsm} .
}
\section{Inputs on Tab Base Settings}{
\describe{
\item{name of design}{must be a valid name. The design itself is created under 
     this name in the R workspace. }
\item{number of factors}{must always be specified. It must be an integer number 
      from 3 to 7. \cr
     The number of factors must match the number of entries on the Factor Details tab.}
\item{block name}{name for a block variable (NULL, if no blocks)). 
      Blocks are possible for 4 and 5 factors only (ignored otherwise).}
\item{seed}{can be provided for reproducing an existing design. }
\item{randomization}{can be switched off in exceptional situations. Usually, one would not want to do that.}
}
}

\references{ ~put references to the literature/web site here ~ }
\author{ Ulrike Groemping }
\seealso{ See also \code{\link[DoE.wrapper]{bbd.design}} for the function that does the calculations 
and \code{\link[rsm]{bbd}} for the underlying function from package \pkg{rsm}.}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
