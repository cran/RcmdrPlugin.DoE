\name{Menu.2level}
\alias{Menu.2level}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{2-level factorial designs}
\description{There are two types of orthogonal 2-level factorial designs, 
regular fractional factorial designs and screening designs. This 
help file is about when to apply these.}
%- maybe also 'usage' for other objects documented here.
\section{Quantitative or Qualitative}{
Both types of design are suitable for quantitative and qualitative factors alike. 
}
\section{Screening designs or Plackett-Burman designs}{
Screening designs are particularly useful, if the experiment is intended to pick a few 
important factors out of a list of many candidate factors. It often can not be ruled out 
that factors interact with each other, but the interactions are not of interest at the 
screening stage. If the main effects are stronger than the interactions, which is very often 
the case, the screening experiment has a good chance of selecting the key factors 
for further experimentation. With very high expertise and some luck, a screening 
experiment might even be sufficient to draw further conclusions.
}
\section{Regular (fractional) factorial designs}{
Regular Fractional Factorial designs of resolution III are also sometimes used for 
screening. If the aliasing is not too severe, if e.g. just three main effects are aliased with 
one 2-factor interaction each (i.e. one word of length three), this can be reasonable. However, 
with more severe aliasing, using a resolution III design is more risky than using a screening design, 
because main effects are completely aliased with 2-factor interactions, which can lead to severe bias and 
wrong conclusions. 

Regular (Fractional) Factorial designs of resolution IV or higher are particularly 
useful, if not only main effects but also 2-factor interactions are expected to be 
active. Note that interactions between more than two factors are usually considered negligible. 
This is usually appropriate, if the experimental region is not too large, since many 
functions can be approximated well by first- or second-order polynomials over small regions. 

Regular (Fractional) Factorial designs can be run in blocks. This is advisable, whenever the experimental 
units are not homogeneous, but smaller groups of units (the blocks) can be made 
reasonably homogeneous (e.g., batches of material, etc.). The number of blocks 
must be a power of 2. If there are some experimental factors, that can only be varied for 
a complete block, a so-called splitplot design is needed; this can be accomodated 
by function \code{\link[FrF2]{FrF2}}, but has not been implemented in this GUI so far.

If package \pkg{\link[FrF2.catlg128:FrF2.catlg128-package]{FrF2.catlg128}} 
is installed (this will not be necessary for standard use), 
there is an Expert menu entry for loading catalogues from this package 
for usage with regular fractional factorial 2-level designs. 
On using this menu entry, the package is loaded, and a list of catalogues is shown. 
Do not unnecessarily load them, because some of them are very large.
}
\section{Warning}{Important: For both types of design, like also for other factorial designs, 
the experiment must conduct all experimental runs as determined in the design, 
because the design properties will deteriorate in ways not easily foreseeable, 
if some combinations are omitted. 

It must be carefully considered in the planning phase, whether it is 
possible to conduct all experimental runs, or whether there might be restrictions 
that do not permit all combinations to be run (e.g.: three factors, each with levels 
\dQuote{small} and \dQuote{large}, where the combination with all three factors 
at level \dQuote{large} is not doable because of space restrictions). 
If such restrictions are encountered, the design should be devised in a different way from the beginning. 
If possible, reasonable adjustments to levels should ensure that a factorial design 
becomes feasible again. Alternatively, a non-orthogonal D-optimal design can take 
the restrictions into account. \emph{Unfortunately, this functionality is not yet implemented in this GUI.}
}

\references{ 
    Box G. E. P, Hunter, W. C. and Hunter, J. S. (2005) 
    \emph{Statistics for Experimenters, 2nd edition}.
    New York: Wiley.
 }
\author{ Ulrike Groemping }
\seealso{ See Also \code{\link[FrF2]{pb}} for the function behind the screening designs, 
\code{\link[FrF2]{FrF2}} for the function behind the regular fractional factorial designs, 
and \code{\link[FrF2:CatalogueAccessors]{catlg}} for a catalogue of regular fractional factorial designs, 
and \code{\link{DoEGlossary}} for a glossary of terms relevant in connection with 
orthogonal 2-level factorial designs. 
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
