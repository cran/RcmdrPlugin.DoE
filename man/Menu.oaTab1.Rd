\name{Menu.oaTab1}
\alias{Menu.oaTab1}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Basic information for orthogonal main effects designs}
\description{Basic information for orthogonal main effects design Menu}
\section{Brief statistical background}{
  The orthogonal main effects designs are of different types. 
  They all work well if there are indeed no interactions between factors. 
  Some of them have complete aliasing between main effects and two-factor interactions 
  at least for some factors. It is therefore advisable to check the design 
  before actually conducting the experiment with respect to its potential analysis 
  options and biases. 
  
  Also note that it is usually preferable to create 
  an experiment with solely 2-level factors from the special menu for 2-level 
  situations. If there is just one factor at more than 2 levels, it may also be 
  useful to simply cross this factor with an otherwise 2-level design. Also, 4-level 
  factors can be accomodated in 2-level designs by allocating them to two 2-level 
  factors together with their interaction (i.e. three columns of the model matrix). 
  Both possibilities will be automatically available in the future; for the time 
  being, they require manual work by the user.
}
\section{Inputs on Tab Base Settings}{
\describe{
\item{name of design}{must be a valid name. The design itself is created under 
     this name in the R workspace. }
\item{number of factors}{must always be specified. 
     The number of factors must match the number of entries on the Factor Details tab.}
\item{specific array}{can be selected from the drop-down list; this implies that this 
     particular array is used for generating the design; the array name indicates its 
     number of runs and the maximum possible numbers of factors with various numbers of levels. 
     For example, the array \code{L12.2.2.6.1} can accomodate 2 factors at 2 levels each 
     and one factor at 6 levels}
\item{minimum number of runs}{can be selected from dropdown, but is not needed}
\item{minimum residual df}{is per default 0 and can be set to any positive integer number; 
     it specifies the minium number of extra runs over and above what would be needed for 
     a model with main effects for all factors; for example, when using the design 
     L12.2.2.6.1 for two 2-level factors and one 6-level factor, the model with all 
     main effects requires \code{1+2*(2-1)+1*(6-1)=8} degrees of freedom, i.e. there are 
     four extra degrees of freedom for pure error or lack of fit}
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
\seealso{ See Also \code{link[DoE.base]{oa.design}} for the function that does the calculations 
and \code{\link{Menu.General}} for overall help on the general factorial design menu.}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
