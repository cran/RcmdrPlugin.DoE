\name{Optimal designs}
\alias{Optimal designs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Optimal designs}
\description{Optimal designs start from the assumption that a certain 
model structure is suitable for the problem at hand and optimize 
the design points for estimation of this model structure.}
%- maybe also 'usage' for other objects documented here.
\section{Optimal designs}{
R package \pkg{AlgDesign} offers optimal designs. 
This GUI currently offers the so-called D-optimal designs for standard situations only 
(no augmentation, no blocking, little tuning of parameters). 
D-optimal designs are most widely-spread but not necessarily best for all purposes. 
The implementation of D-optimal designs relies on a candidate data set.

D-optimal designs are liked because they are very flexible in terms of run size. 
Furthermore, they are the only designs for which it is very easy to incorporate 
constraints. Whenever the specified run size offers enough degrees of freedom and 
the candidate set contains enough variety for estimating the model, 
a D-optimal design can be found. However, a design which is optimal for the chosen 
run size can be very bad in absolute terms; like always, miracles are not possible. 

Furthermore, note that there are many situations in (industrial) experimentation, 
for which assuming a model structure is ambitious if not inadequate. For such situations, 
other types of designs should be used. 
}

\section{Usage}{
As was already mentioned, the implementation of D-optimal designs in this GUI 
requires a candidate design, 
which can be any data frame, e.g. a full factorial design, an orthogonal array design 
or a latin hypercube design. The menu item \emph{Candidate design ...} offers shortcuts 
for creation of candidate designs.

The menu item \emph{D-optimal design ...} allows creation of a D-optimal design, 
using the active data set (possibly restricted to exclude inadequate combinations) 
as the candidate set. 
}

\references{ 
  Atkinson, A.C. and Donev, A.N. (1992). \emph{Optimum experimental designs}. Clarendon Press, Oxford. 

  Federov, V.V. (1972). \emph{Theory of optimal experiments}. Academic Press, New York. 

  Wheeler, R.E. (2004). \emph{Comments on algorithmic design}. Vignette accompanying package \pkg{AlgDesign}. 
       \url{../../AlgDesign/doc/AlgDesign.pdf}.
}
\seealso{ See also \code{\link[AlgDesign]{optFederov}} and \code{\link[DoE.wrapper]{Dopt.design}}  }
\author{ Ulrike Groemping }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
