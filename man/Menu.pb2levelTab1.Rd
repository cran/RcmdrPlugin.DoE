\name{Menu.pb2levelTab1}
\alias{Menu.pb2levelTab1}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Basic information for 2-level screening designs}
\description{Basic information for 2-level screening design Menu}
\section{Brief statistical background}{
  Most of the screening designs are so-called Plackett-Burman designs. 
  Exceptions occur, where Plackett and Burman did not suggest a design or where 
  the Plackett-Burman designs coincide with the regular fractional factorial designs 
  which are not so suitable for screening purposes. For more information, look at 
  the help file for function \code{\link[FrF2]{pb}} from package \pkg{FrF2}.
}
\section{Inputs on Tab Base Settings}{
\describe{
\item{name of design}{must be a valid name. The design itself is created under 
     this name in the R workspace. }
\item{number of runs}{must be provided and must be a multiple of 4.}
\item{number of factors}{must always be specified. It must be smaller than 
     the number of runs. The function always creates a design with the number 
     of factors one less than the number of runs. Those factors not used in the 
     experiment are named e1, e2 etc. and serve for creating half-normal plots of 
     the effects. 
     The number of factors must match the number of entries on the Factor Details tab.}
\item{replications}{is the number of times each experimental run is conducted. 
     If larger than 1, each run is conducted several times. If the checkbox next 
     to the number of replications is checked, it is assumed that the experiment 
     involves repeated measurements for one setup of the experimental run; if it 
     is not checked, the experimental run itself is replicated with everything 
     relevant newly set up (much more valuable than repeated measurements, unless 
     the key driver of variability is in the measuring step). If the check box is 
     not checked, the experiment will be randomized separately for each round of 
     replications (first all first runs, then all second runs etc.).}
\item{randomization settings}{should normally not be changed; you can provide a 
     seed if you want to exactly reproduce a randomized design created in the past.
     Unchecking the randomization box will produce a non-randomized experiment. 
     This is usually NOT recommended.}
}
}

\references{ ~put references to the literature/web site here ~ }
\author{ Ulrike Groemping }
\seealso{ See Also \code{link[FrF2]{pb}} for the function that does the calculations 
and \code{\link{Menu.2level}} for overall help on the 2-level design menu.}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
