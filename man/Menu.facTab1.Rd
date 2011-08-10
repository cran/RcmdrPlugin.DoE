\name{Menu.facTab1}
\alias{Menu.facTab1}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Basic information for full factorial designs}
\description{This help file describes usage of the basic information tab of 
the full factorial design menu}
\section{Brief statistical background}{
  Full factorial designs consist of all possible combinations of factor levels, 
  i.e. the number of runs is the product of all numbers of factor levels, 
  for example 24 for an experiment with two 2-level factors and one 6-level 
  factor. Of course, their size grows fast with the number of factors. If 
  a full factorial design is not feasible, orthogonal main effects designs 
  or (manually-generated) combinations of smaller designs may be a reasonable 
  option.}
\section{Inputs on Tab Base Settings}{
\describe{
\item{name of design}{must be a valid name. The design itself is created under 
     this name in the R workspace. }
\item{number of runs}{is a consequence of the specifications on the Factor Details tab.
     It is displayed for information purposes only; its value is only valid if 
     the Factor Details tab contains entries for all factors.}
\item{number of factors}{must always be specified. 
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
\item{number of blocks}{is the number of equally-sized blocks of homogeneous 
     units into which the overall number of runs is to be subdivided. 
     Note that the number of blocks must be compatible with the numbers of 
     levels of the experiment: it must be the product of one or more primes 
     that the numbers of levels factor into. For example, \cr
     a design with three factors at 2,5 and 5 levels can have 
     5 blocks or 10 units each, no other blocking is possible for this design 
     because it would confound blocks with factor main effects;\cr
     a design with three factors at 2, 6 and 6 levels can have 2, 3, 6, 4 or 12 blocks, 
     because all these numbers of blocks can be obtained from the three 2s and two 3s 
     the numbers of levels factor into without confounding a main effect.\cr
     An error message will be given whenever an impossible number of 
     blocks or a number of blocks that would require aliasing of blocks with 
     main effects is used; the design is generated with a warning message 
     whenever the block factor is aliased 
     with any two-factor interaction among the design factors. }
\item{randomization settings}{should normally not be changed; you can provide a 
     seed if you want to exactly reproduce a randomized design created in the past.
     Unchecking the randomization box will produce a non-randomized experiment. 
     This is usually NOT recommended.}
}
}

\author{ Ulrike Groemping }
\seealso{ See Also \code{\link[DoE.base]{fac.design}} for the function that does the calculations 
and \code{\link{Menu.General}} for overall help on the general factorial design menu.}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
