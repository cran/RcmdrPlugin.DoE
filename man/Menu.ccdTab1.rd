\name{Menu.ccdTab1}
\alias{Menu.ccdTab1}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Basic information for Central Composite Designs }
\description{Basic information for Box-Behnken designs }
\section{Brief statistical background}{
  Central composite designs can have three (\code{alpha=1}) or five levels in all factors 
  and are useful for fitting second order polynomials to experimental data 
  based on several quantitative response variables. 
  They can be used in a process of sequential experimentation, experimenting first with the 
  cube portion and later adding (a) star block(s). 
  
  For more information, look at the help file for function 
  \code{\link[DoE.wrapper]{ccd.design}} from package \pkg{DoE.wrapper} 
  or at \code{\link[rsm]{ccd}} from package \pkg{rsm}. 
}
\section{Inputs on Tab Base Settings}{
\describe{
\item{name of design}{must be a valid name. The design itself is created under 
     this name in the R workspace. }
\item{Determine the cube portion}{An existing 2-level fractional factorial, 
     preferrably of at least resolution V, can be selected, or a new design 
     for the cube portion can be generated.}
\item{number of center points}{refers to the center points in the star portion. 
     The number of center points in the cube portion is defined within the cube itself.
     }
\item{alpha}{determines how far inside (alpha<1) or outside (alpha>1) of the cube 
      the star points are positioned. The special values \code{orthogonal} (default)
      or \code{rotatable} define calculated alpha values with interesting statistical properties.
      However, it must of course be checked whether these make practical sense. For example, 
      if the orthogonal alpha turns out to be 2 but experimentation beyond 1.5 does not make sense,
      the number should be defined manually.
      }
\item{seed}{can be provided for reproducing an existing design. }
\item{randomization}{can be switched off in exceptional situations. Usually, one would not want to do that. 
      Note that the checkbox here refers to the star portion only. For the cube portion, there is also such 
      a checkbox.}
}
}

\references{ ~put references to the literature/web site here ~ }
\author{ Ulrike Groemping }
\seealso{ See also \code{\link[FrF2]{FrF2}} for the function defining the cube portion 
of the design \code{\link[DoE.wrapper]{ccd.augment}} for the function that augments 
the cube portion with the star points, also function \code{\link[rsm]{ccd}} from package 
\pkg{rsm} for the function that underlies function \code{ccd.augment}. }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
