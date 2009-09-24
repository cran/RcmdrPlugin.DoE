\name{Menu.lhsTab1}
\alias{Menu.lhsTab1}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Basic information for latin hypercube samples}
\description{Basic information for latin hypercube samples}
\section{Brief statistical background}{
  Latin hypercube designs try to fill the multidimensional space 
  spanned by several quantitative response variables. 
  Space filling is attempted by different methods 
  (the simplest and least effective of which is a random sample. 
  For more information, look at 
  the help file for function \code{\link[DoE.wrapper]{lhs.design}} from package \pkg{DoE.wrapper}.
}
\section{Inputs on Tab Base Settings}{
\describe{
\item{radio buttons}{allow to choose among different design types. The default choice 
     (\code{optimum}) is reasonable, if it is feasible. \code{random} should only be used 
     for a quick random look, of course no space-filling optimality can be expected 
     by a random selection. For the other variants and the optimality criterion,
     see the help of the underlying function.}
\item{name of design}{must be a valid name. The design itself is created under 
     this name in the R workspace. }
\item{number of runs}{must be provided and can be any positive integer.}
\item{number of factors}{must always be specified. Although not very reasonable,
      it is possible to choose the number of factors larger than the number of runs.\cr 
     The number of factors must match the number of entries on the Factor Details tab.}
\item{number of decimal places }{can be provided for rounding (as in function \code{\link{round}}). }
\item{seed}{can be provided for reproducing an existing design. }
}
}

\author{ Ulrike Groemping }
\seealso{ See Also \code{\link[DoE.wrapper]{lhs.design}} for the function that does the calculations 
and \code{\link[lhs]{lhs-package}} for the package used in that function.}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
