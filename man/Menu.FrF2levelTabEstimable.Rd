\name{Menu.FrF2levelTabEstimable}
\alias{Menu.FrF2levelTabEstimable}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Estimable 2fis for regular (fractional) factorial 2-level designs}
\description{Estimable 2fis for regular (fractional) factorial 2-level designs}

\section{Warnings}{
Not all combinations of inputs are compatible with each other. You may avoid 
unnecessary work by reading the advice below. In case of violating the 
restrictions below, the specification of estimable 2fis will take precedence over 
other specifications (you will be warned, if this happens; on re-opening the dialog, 
you will then have the chance to adjust the settings).

Blocked designs (number of blocks larger than 1 on the \dQuote{Base Settings} tab) 
and specification of an estimable model are not compatible 
with each other in the current version of the software. 
Thus, you have to decide on using blocks OR specifying estimable 2-factor interactions. 
(Nevertheless, 2 or 4 blocks can be specified as detailed in the 
section \dQuote{Brief statistical background} below. 

Generators or a specific design (radio buttons on the \dQuote{Base Settings} tab) 
can neither be specified together with estimable 2-factor interactions.

Finally, it is neither possible to simultaneously specify 
hard-to-change factors on the \dQuote{Factor Details} tab and 
estimable 2-factor interactions. 
}

\section{Brief statistical background}{
  This tab allows to specify 2-factor interactions (2fis) that are of special 
  interest and must be estimable from the experiment. Per default, it is assumed 
  that the design must be at least of resolution IV.
  
  There are two different approaches to estimability: If it can realistically be assumed that 
  all the 2fis that are not of special interest are negligible, it is sufficient 
  to request that the specified 2fis are clear of aliasing with EACH OTHER. Otherwise, 
  i.e. if one is not prepared to assume that all the unselected 2fis are negligible, 
  it is more appropriate to request that the specified 2fis are clear of aliasing 
  with ANY 2fis (both with each other and the other 2fis). Even under this approach, the 
  design need not be resolution V, since the unselected 2fis may be aliased 
  with each other. 
  
  If a design with certain interactions to be estimable is to be run in more 
  than four blocks, there is currently no automated way to produce it, 
  as it is not permitted to specify a number of blocks together 
  with selecting 2fis to be estimable. A blocked design with 2 or 4 blocks can be 
  obtained by explicitly including one (2 blocks) or two (4 blocks) blocking factors. \cr
  For the case of 4 blocks, it is important to include the interaction between 
  the two blocking factors into the selected interactions. \cr
  For the case of 2 blocks only, the blocking factor is treated like the 
  other factors, i.e. if its interactions with other factors are not among the selected ones, 
  they may be aliased with other 2fis (and even with main effects, 
  if resolution III is permitted in exceptional situations), which is usually 
  considered adequate. 
  
  The design is created with function \code{\link[FrF2]{FrF2}} from package \pkg{FrF2}. 
  The special functionality for estimable 2fis is described \code{\link[FrF2:estimable.2fis]{here}}. 
  Users who are not familiar with the terminology around regular fractional factorial designs (e.g. 
  the concept of resolution) can browse the \code{\link{DoEGlossary}}.
}
\section{Inputs on Tab Estimable Model}{


\describe{
\item{Mode of requesting estimable 2-factor interactions}{
     The radio button switches off the request for specific interactions to 
     be estimable or requests one of the two implemented modes that have 
     been discussed above. }
\item{Mimimum resolution}{is per default IV and can be set to III by checking 
     the box. Usually, the default is more appropriate.}
\item{Select 2-factor interactions }{move selected 2-factor interactions between 
     the available list (those are not selected) and the selected list by 
     selecting them with the mouse (multiple selections possible) and 
     moving them with the arrow buttons. }
\item{Limit search time}{If the bottom radio button is chosen, the search for a 
     design can take a long time. In this case, it is possible to increase (or decrease) 
     the search time after which the search is stopped even if no appropriate design 
     was identified.}
}
}

\author{ Ulrike Groemping }
\seealso{ See also \code{\link[FrF2]{FrF2}} for the function that does the calculations and 
\code{\link[FrF2:estimable.2fis]{estimable}} for the statistical detail of the \dQuote{Estimable Model} 
functionality within this function.}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
