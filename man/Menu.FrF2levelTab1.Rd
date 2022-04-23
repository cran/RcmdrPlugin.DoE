\name{Menu.FrF2levelTab1}
\alias{Menu.FrF2levelTab1}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Basic information for regular (fractional) factorial 2-level designs}
\description{Basic information for regular (fractional) factorial 2-level designs}
\section{Brief statistical background}{
  These designs are created with function \code{\link[FrF2]{FrF2}} from package \pkg{FrF2}. 
  Look up the documentation there for statistical details. Users who are not 
  familiar with the terminology around regular fractional factorial designs (e.g. 
  the concept of resolution) can browse the \code{\link{DoEGlossary}}.
}
\section{Inputs on Tab Base Settings}{
\describe{
\item{name of design}{must be a valid name. The design itself is created under 
     this name in the R workspace. }
\item{number of runs}{must be a power of 2. 
     If this is omitted by unchecking the checkbox next to it, the function 
     looks for the smallest possible design that fulfills all requirements.}
\item{number of factors}{must always be specified. It must be smaller than 
     the number of runs. Resolution IV designs are possible, if this number is 
     smaller than half the number of runs.}
\item{replications}{is the number of times each experimental run is conducted. 
     If larger than 1, each run is conducted several times. If the checkbox next 
     to the number of replications is checked, it is assumed that the experiment 
     involves repeated measurements for one setup of the experimental run; if it 
     is not checked, the experimental run itself is replicated with everything 
     relevant newly set up (much more valuable than repeated measurements, unless 
     the key driver of variability is in the measuring step). If the check box is 
     not checked, the experiment will be randomized separately for each round of 
     replications (first all first runs, then all second runs etc.).}
\item{blocks}{is the number of blocks. Blocks are needed, if a factor relevant to 
     the outcome but not of interest in itself is to be corrected for (e.g. batch 
     of material). If you just give a number here, the program takes care of 
     all details itself. If you are an expert and consider it necessary, 
     you can provide more information on the 
     special tab on blocking that is visible if special choices have been activated. }
\item{randomization settings}{should normally not be changed; you can provide a 
     seed if you want to exactly reproduce a randomized design created in the past.
     Unchecking the randomization box will produce a non-randomized experiment. 
     This is usually NOT recommended.}
\item{Design Properties}{allow to set a minimum resolution (III, IV or V+); 
     for most purposes, IV is a good solution, i.e. it might be a good idea to 
     increase the default choice.\cr 
     In addition, a choice can be made between \cr
     MA = maximum resolution and minimum aberration, 
     which implies usage of the design with the 
     overall least severe degree of aliasing among effects, \cr
     OR\cr
     MaxC2 = maximum number of clear 2-factor interactions, which means that the 
     design is chosen for which the most 2-factor interactions are not aliased with 
     any other main effect or 2-factor interaction. 
     
     Note that, when choosing MaxC2, it is particularly important to also 
     consider setting resolution to IV, as otherwise the design will very likely 
     be of resolution III only, even if there are good resolution IV designs with 
     many clear 2-factor interactions around.}
\item{Information Buttons}{are available for looking at interim information on the 
     suitable designs: The button \code{View available designs} allows to 
     look at the properties of the designs in the catalogue, the button 
     \code{Show best 10 designs ...} prints more detailed information on the best 
     10 available designs for the currently specified settings. 
     
     Note that you may want to retrieve the still open menu from somewhere 
     in case the latter button is used, since this button releases the grab on the menu 
     in support of scrollability of the printed results. I hope to find a better solution 
     for this in the future.}
\item{Expert Choices}{If the special choices are activated, it is possible\cr 
     to specify a set of generators,\cr
     to specify a catalogue of designs different from the default one (if one is in the workspace; 
     with package \pkg{FrF2.catlg128} installed, a catalogue from that package 
     can be loaded into the workspace using the menu item 
     "Experts: load additional catalogue ...")\cr 
     or to pick a specific design name from the current catalogue of designs.\cr
     Radio buttons activate one of these possibilities. 
     Details for the consequences of these choices can be found in the help file for function \code{\link{FrF2}}.
     }
}
}

\author{ Ulrike Groemping }
\seealso{ See also \code{\link[FrF2]{FrF2}} for the function that does the calculations, 
\code{\link[FrF2:CatalogueAccessors]{catlg}} for the catalogue of designs that this functionality is based on, 
and \code{\link{Menu.2level}} for the distinction between screening designs and regular 
fractional factorial designs.}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
