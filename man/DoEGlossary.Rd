\name{DoEGlossary}
\alias{DoEGlossary}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Glossary for DoE terminology as used in RcmdrPlugin.DoE}
\description{
  This glossary is intended for users who have heard about the concepts of 
  experimental design, orthogonality, and so forth but would nevertheless 
  like to look up some of the terminology.
  
  It can of course not replace a good training or a good book on experimental 
  design.}
\section{Glossary}{
\describe{
\item{star}{ 
  A \code{*} indicates a paragraph or section, that requires more 
  statistical understanding than necessary for successful application of 
  experimentation and can be skipped by readers who do not want to go in too deeply. 
  Do not confuse with resolution III*.
}
\item{2fi}{
  short for 2-factor interaction: 
  The effect of a factor depends on the level of a second factor, 
  e.g. in a sled test example reported in Grove and Davis, 1992 (p.25 f.), 
  speed of airbag inflation shows almost no effect on chest acceleration for 
  the smaller airbag in the experiment, while a higher speed strongly decreases 
  chest acceleration for the larger air bag. 
  One can also look at this example the other way round: 
  For high speed, increasing the airbag size reduces chest acceleration, 
  while for low speed, increasing the airbag size increases chest acceleration.
}
\item{2-level fractional factorial}{
  A 2-level array is a row-by-column table, 
  each column of which contains two distinct values only. 
  A \dQuote{2-level orthogonal array} is a 2-level array with particular balance 
  properties: If for each column, one value is denoted by -1 and the other by +1, 
  the element wise product of any pair of two columns always sums to 0. 
  This provides an easy means of checking for orthogonality of any 2-level array. 
  Balance of the example plan can be expressed verbally as follows: 
  Each possible level combination of two factors in the plan occurs equally often, 
  e.g. short float rod/small tank, long float rod/small tank, short float rod/large tank, 
  long float rod/large tank each occur twice.
  A \dQuote{regular 2-level fractional factorial} is a special 2-level orthogonal 
  array, for which all effects are either fully aliased or not aliased at all (no 
  partial aliasing). 
  A \dQuote{non-regular 2-level fractional factorial} is a 2-level orthogonal 
  array, for which partial aliasing occurs. 
}
\item{aberration}{
  \code{*}Roughly, aberration is a criterion for comparing two designs of the same resolution: 
  the design is better if aberration is smaller. 
  Aberration measures the extent of the most severe aliasing: 
  The larger the aberration, the more aliasing of the most severe type 
  (resolution III: main effect with 2fi, resolution IV: 2fi with 2fi 
  (and main effect with 3-factor interaction, not listed in tables of CATALOGUE.XLS)) 
  is present in the design.
  Technically, aberration is the number of shortest words.
}
\item{active effect}{
  An effect is said to be \dQuote{active}, if it does have an influence on the 
  response, and inactive otherwise. 
}
\item{aliasing}{
  Two effects are said to be completely aliased, 
  if they cannot be seperated from each other by the design. 
  An extreme example would be running an experiment on tires such that 
  large tires of material 1 are compared to small tires of material 2. 
  As there are neither large tires of material 2 nor small tires of material 1, 
  the main effects of tire size and material are completely aliased. 
  (Designs with aliasing between main effects would be resolution II and are not 
  implemented in package \pkg{FrF2}.
  If one really intends to alias two main effects with each other, 
  one can always combine them into one, e.g. in the above example the combined 
  factor could be called \dQuote{tire}.) 
  Likewise, aliasing between other effects like between two 2fis or between a main effect 
  and a 2fi means that the effects cannot be separated from each other by the design. 
  More technically, in the present context, aliasing refers to structurally 
  determined identity between several effects that arises in fractional factorials.
}
\item{Design}{
  \dQuote{Design} is the shortest term for an experimental plan or experimental layout.
}
\item{Degrees of freedom (df)}{
  The data contain a certain number n of independent pieces of information, 
  e.g. in case of a designed experiment we have the number of experimental runs 
  (or a multiple of this number in case of proper replication). 
  In any case, one needs to estimate the overall average from the responses of 
  the experiment so that there are n - 1 independent pieces of information left. 
  These are the \dQuote{degrees of freedom} to start with. 
  We then introduce factors the effects of which we want to estimate. 
  Each effect has degrees of freedom (df) associated with it, 
  e.g. the df for the main effect of a 2-level factor are 1 (=2-1), 
  while the df for the main effect of a 4-level factor would be 3 (=4-1). 
  In total, the sum of the df of all effects that we estimate cannot exceed the 
  df that we have gained from collecting data. 
  If we subtract the df for each effect that is estimated from the overall df, 
  the remaining number are the so-called error degrees of freedom or residual df. 
  In DoE, we often \dQuote{saturate} models, 
  i.e. we assign all available degrees of  freedom to effects so that residual df are 0. 
  In this case, the only way of assessing whether or not an effect is active is 
  by halfnormal plots, full-normal plots, or effects Paretos; 
  \dQuote{proper} statistical analysis like Analysis of Variance does require some 
  error degrees of freedom.
}
\item{DoE}{
  Design of experiment, also experimental design: 
  The statistical discipline that takes care of planning / designing experiments. 
  Some people also use this expression for the design itself, or for the whole 
  process of running a designed experiment.
}
\item{D-optimal}{
  A D-optimal design minimizes the volume of the confidence ellipsoid for the model 
  coefficients (by maximizing the determinant of the model information matrix); 
  requires that a model is specified in advance
}
\item{effect}{
  The term \dQuote{effect} stands for all kinds of impact that a factor or a 
  combination of factors can have on the response. Effect summarizes main effects, 
  2fis, and even higher-order interactions in one expression. 
  It is also customary to split main effects of multilevel factors into several 
  contributions, e.g. the main effect of a 3-level factor may be split 
  into a linear and a quadratic effect. 
  Strictly speaking, the effects are the theoretically \dQuote{true} impacts on 
  the response, that cannot be observed in an experiment, as there always 
  is experimental error (in CAE experiments, there is often no random error, 
  but there is model error instead). 
  Sometimes, the term effect is also used for the estimated effects, 
  but one should always bear in mind that estimated effects are subject to 
  experimental error and / or model error and / or possible aliasing, 
  so that they are indicative of true effects, but need to be verified 
  (e.g. by confirmation runs, cf. Grove and Davis, 1992, p.83).
}
\item{estimate}{
  When running an experiment (setting aside CAE), the response is subject 
  to measurement error and many other sources of random or systematic deviation 
  from \code{the truth}. Therefore, effects will not be known after the experiment, 
  but can only be \code{estimated}. For estimating a main effect of a 2-level factor, 
  for example, one has to calculate the difference between the average response 
  for the two levels. Using the term \dQuote{estimating} instead of \dQuote{calculating} 
  emphasizes the fact that there is some variation involved in the actually 
  calculated numbers, as using a different part, or measuring on a different 
  machine or under different environmental conditions (or ...) would have 
  returned a different number.
  With CAE, things are somewhat different: In a CAE experiment, there is often no 
  measurement error (or very little from computational inaccuracies), 
  but there almost certainly is model error, i.e. the CAE model does not 
  perfectly reflect reality. Hence, any CAE experiment yields insights into 
  model reality, but not necessarily into real world reality.
}
\item{experiment}{
  \dQuote{By an experiment we mean any test, evaluation or trial designed 
  to evaluate a change, which requires the collection of measurements (data) 
  so that a judgment (prediction) on the performance of the siystem can be formed, 
  and a decision can be made as to whether further re-design 
  (with further experimentation and prediction) is necessary.} 
  (cited from Grove and Davis, 1992, p.1) 
  In this glossary, the term is used in a more restricted sense for a 
  statistically designed experiment, in which experimentation is done following 
  an experimental plan in a number of factors, each of which has a predetermined set of levels.
}
\item{factor}{
  A factor is a characteristic of the system under study that is to be systematically varied over a predetermined set of levels in an experiment.
}
\item{fractional factorial}{
  A regular fractional factorial is a design obtained from a full factorial in fewer factors by deliberately 
  assigning additional factors to particular interactions (i.e. by choosing generating contrasts), 
  thereby introducing perfect aliasing between some effects. One can also start 
  from the full factorial in all factors, and state that a regular fractional 
  factorial is a design obtained by taking a regular (!) fraction of the full factorial only. 
  This notion is closer to the expression, of course.\cr
  A non-regular fractional factorial analogously takes a non-regular fraction of the experiment 
  one would have to run in case of a full factorial. 
}
\item{full factorial}{
  A full factorial is a design that consists of every possible combination of levels 
  of all the factors. A full factorial of \code{k} 2-level factors has \code{2^k} runs (if unreplicated).
}
\item{generating contrast}{
  A generating contrast or \dQuote{generator} is needed for generating regular 
  fractional factorials. It is obtained by assigning an 
  additional factor to an interaction column from a full factorial, 
  e.g. ABCDE=I when assigning the additional factor E to the 4-factor interaction 
  ABCD in a 16-run design: 
  As E equals ABCD in this case, the product of ABCD with E yields a constant 
  column of + (=+1), which is denoted by I.
}
\item{base factors}{
  The \code{k} 2-level factors making up a \code{2^k} run full factorial design 
  are called the base factors. They can be used for generating a regular 2-level 
  fractional factorial. 
}
\item{Hadamard matrix}{
  \code{*}A (transposed) Hadamard matrix is a matrix of -1 and +1 such that all 
  columns of the matrix are orthogonal. All orthogonal 2-level arrays can be 
  understood as square Hadamard matrices (when adding a first column of solely +1s). 
  Likewise, any square Hadamard matrix with a first column of solely +1s can be 
  used for creating an orthogonal array for 2-level factors.
}
\item{half-normal plot}{
  The half-normal plot is also called Daniel plot, according to Daniel (1959). 
  The idea is as follows: if all factors have no impact on the response, the 
  estimated effects are random numbers with mean 0 and some variance and should 
  roughly follow a normal distribution. The absolute values of these estimated 
  effects thus follow the so-called half-normal distribution. 
  Now, we can depict the sorted standardized absolute effects against the theoretical 
  quantiles of the standard halfnormal distribution (plotting positions). 
  The plotting positions are chosen such that the effects lie nicely on a line, 
  if they behave like normally distributed random numbers with mean 0. 
  In the context of DoE, one usually hopes that most effects lie on a line through 
  the origin, while a few effects are distinctly larger than the continuation of the line. 
  Those effects that stick out well above (or to the right of) the line are considered 
  \dQuote{active}, as they are larger than what one would expect from the size of 
  random variation within the experiment. 
  
  If the eye-balled line does not point towards the origin, this often indicates presence of an outlier.
  
  Caution: Occasionally, although some effects stick out dramatically, 
  the largest effect almost lies on the eye-balled line. It is unreasonable to 
  argue that the largest effect is inactive but smaller effects are active. 
  Whenever a particular effect is considered active, all larger (in absolute value) 
  effects have to be considered active as well. 
  
  Interpretation of half-normal plots, in case of non-ideal appearance, 
  requires careful thinking, looking for outliers, ...
  Half-normal plots should be used with great care or not at all in experiments with few runs only 
  (e.g. 8 run experiments). If replications are present, it can be better to use analysis of 
  variance (provided the replications of one and the same run represent all kinds 
  of random variation that may be encountered between runs) than to use half-normal plots. 
  Whenever half-normal plots are used, one should include all effects - also those associated with empty columns - in the plot.
  Therefore, screening designs created by RcmdrPlugin.DoE include those empty columns per default.
}
\item{hereditary principle}{
  The idea that an interaction is less likely to be important if one or both of the 
  involved main effects are inactive, is called the \dQuote{hereditary principle}. 
  In case of aliasing between two 2fis, if the interaction column that hosts the 
  two aliased 2fis, is estimated to have a considerable effect, the hereditary principle 
  can sometimes be used to resolve the issue which of the two 2fis is responsible 
  for this finding: 
  If one of the two 2fis involves a main effect that is not estimated to be important, 
  while for the other both the involved main effects are estimated to be important, 
  the hereditary principle suggests that the 2fi with two \dQuote{parents} is 
  the likely responsible. Nevertheless, it is possible that a 2fi is truly important, 
  although only one (or even none) of the two involved main effects is active. 
  Therefore, in case of ambiguity it is always a good idea to do confirmation runs 
  or follow-up experiments.
}
\item{I}{
  I denotes a constant column of + (or +1, depending on notation) of appropriate length. 
  Therefore, the letter \code{I} is not used for factor names (neither is \code{i}).
}
\item{interaction}{
  It is possible that the main effect of a factor \code{B} given the first level 
  of a factor \code{A} is substantially different from the main effect of factor \code{B} given the second level 
  of factor \code{A} . In this case, it is said that there is a 2-factor interaction between factors \code{A} and \code{B}. 
  One can extend the concept of interactions to multi-factor interactions 
  (also called higher-order interactions). 
  In practice, however, interactions between more than 2 factors are very rarely 
  considered important and are very difficult to interpret. 
}
\item{latin hypercube}{
  Computer experiments usually do not benefit from repeating runs, because the 
  results will be virtually the same. Therefore, one tries to use designs that 
  do not produce replications when projected into lower-dimensional space (e.g. 
  for modelling with a few factors that turn out to be relevant only). Latin hypercube 
  designs or latin hypercube samples have as many levels for each factor as there are 
  runs. Usually, one tries to choose level combinations such that the design 
  is \dQuote{space-filling}, i.e. fills the experimental space with points so that 
  the experiment provides information everywhere in the experimental region.
}
\item{level}{
  A level is one of the predetermined settings over which a factor is varied 
  (usually very few, in package \pkg{FrF2} mostly two, sometimes also four (not yet implemented). 
  For example, the factor temperature could have the two levels 0 and 20 degree Celsius.
  Determining the levels of a factor is a very important step in planning an experiment, 
  as the results might be very different, when looking at e.g. 
  -15 and 35 degree Celsius instead of 0 and 20.
}
\item{linear effect, quadratic effect}{
  For a quantitative factor, the response can be modeled as a linear function of 
  the size of the factor, i.e. denoting the response by \code{y} and the factors 
  value by \code{x}, we can write \code{y=a+bx}. 
  If the factor has 2 levels only in the experiment, we can estimate \code{b} 
  from the data, but it is impossible to check, whether the factors effect on the 
  response is well-approximated by a linear function. 
  If the factor has more than 2 levels, we can find out, whether a linear function 
  is appropriate, e.g. by additionally fitting a quadratic effect, \code{y=a+bx+cx^2}. 
  In 2-level experiments with quantitative factors, it is also customary to incorporate 
  a few so-called center points, which are in the middle between extremes for all factors. 
  By comparing their average to the average results from the other points, linearity 
  can be checked.
}\item{main effect}{
  The main effect for a 2-level factor is defined as the (true) difference between 
  the (true) responses for the two levels of the factor. It is estimated by the 
  difference between the averages of measured responses for the two levels of the factor. 
  Often, the term \dQuote{main effect} is used for the true unobservable difference 
  as well as for the estimated effect from an experiment. 
  It is, however, useful to be aware that there is a difference, that is due to measurement error, aliasing, ... 
  
  The main effect for factors with more than two levels is made up of several 
  components or degrees of freedom (df),  where df = (levels - 1). 
  For a quantitative 3-level factor (2 df), one often talks about the linear and the 
  quadratic effect, which can in case of equi-distant levels be estimated by 
  the difference between the average responses of the high and the low level (linear effect) 
  and by the difference of the average response of the middle level from the 
  average response of the two outer levels (quadratic effect). 
  Likewise, one can discuss linear, quadratic, and cubic effects for 4-level factors and so on. 
  For qualitative factors - e.g. type of material, shape of gasket etc. - one possibility is to define 
  a reference category, e.g. the current level, and to formulate the main effect in 
  terms of the difference of the response on each level to the response for the reference category.
  }
\item{Median}{
  For obtaining the median of a group of values, first sort the values by size. 
  For an odd number of values, the median is the middle value in the sorted series. 
  For an even number of values, the median is the average of the two middle values of the sorted series. 
  Thus, the median is a value that splits the data into a bottom and a top half.
  }
\item{mixed level orthogonal array}{
  An orthogonal array that contains factors with both 2 level and 3 levels is called 
  a \dQuote{mixed level orthogonal array} or \dQuote{mixed level array}. 
  Such arrays are implemented under menu \dQuote{General Factorial}.
  }
\item{naming convention for factors}{
  It is a convention that factors in experimental plans are abbreviated by capitalized 
  letters from the alphabet, where usually the letter \code{I} is skipped as it has 
  a special meaning in the literature on experimental plans. Once one runs out 
  of capital letters as there are more than 25 factors, conventions are less unique; 
  some people use numbers, others small letters (e.g. default in this software or Minitab), .... 
  If the small letters are also exhausted, this software uses F1, F2, ... 
  
  Interactions in 2-level fractional factorials are denoted by the ordered sequence 
  of factor names of the factors involved, e.g. AB denotes the 2fi between factors A and B,  
  BEFH denotes the four factor interaction between the four included factors. 
  These sequences of letters can be used simultaneously for naming the appropriate column 
  in the design and for naming the whole interaction effect.
}
\item{Plackett-Burman designs}{
  Plackett and Burman (1946) introduced 2-level orthogonal arrays that are not obtained 
  as regular fractional factorials. If the number of runs is not a power of 1, 
  these designs have any particular interaction partially aliased 
  with several main effects, so that on the one hand we don't find unconfounded 
  main effects, but on the other hand, no main effect is completely distorted by 
  a single interaction effect. Note that these designs cannot be used for 
  estimating interactions or for constructing 4-level factors from a pair of 2-level factors. 
  However, a few subsequent analyses have been proposed to use these designs for modelling after 
  using them for screening (requires expert knowledge, not included in this software).
}
\item{Projection properties, projectivity}{
  The term \dQuote{projection properties} refers to the properties of a design, 
  when attention is restricted to a few (seemingly) active factors only, 
  for example in the case of screening designs, where some factors are ruled out 
  as unimportant. A design is said to be of projectivity 3, if it contains at least 
  one full factorial (plus possibly some repeat runs) in any triple of three factors. 
  Analogously, a design is said to be of projectivity 4, if it contains at least one 
  full factorial (plus possibly some repeat runs) in any set of four factors etc. 
  For Plackett-Burman designs, projection properties have been studied in detail by 
  Lin and Draper (1992), Draper and Lin (1995) and Box and Tyssedal (1996). 
  The work on 16 run Hadamard matrices by Box and Tyssedal (2001) 
  is also based on projection properties. It forms the basis of the 16 run screening 
  designs used per default in this software.
}
\item{randomize}{
  Randomization is a means of trying to avoid effects of unknown factors that may 
  for example change over time. In the DoE context, it is advisable to randomize the 
  run order, as time might introduce unexpected effects that can lead to misleading 
  results. Randomizing is the default for all experiments, except if hard-to-change 
  factors are declared. 
  
  Since experimentation without randomization runs great risks particularly in 
  case of very systematic run orders like the one used for hard-to-change factors, 
  one should normally strive to run an experiment in randomized order. 
  However, if the experiment becomes *much* more difficult this way, it may be acceptable 
  to deviate from this rule.
}
\item{replication/repetition}{
  Both replication and repetition stand for repeating a measurement with exactly 
  the same configuration of factor levels. The difference between these two concepts 
  is as follows (cf. Grove and Davis, 1992, p.155/p.198):
  Replication should ideally reflect all possibilities of experimental error; for example, 
  if installing a part in the system may cause variation, replication of a run should 
  not just install a part once and measure the response twice, but should at least re-install 
  the part before re-measuring. Better even, a different part with the same configuration 
  should be installed for also capturing part-to-part variation. 
  
  In many cases, it may be more useful to run a genuine 16-run design instead of 
  twice replicating an 8-run design. 
  Cost may be a driver of using replication instead of a truly larger design, 
  and the desire for a good estimate of experimental variability may be another 
  driver for replication.
  
  Repetition mainly refers to production and measurement processes. 
  It should not introduce experimental error but rather reflect just the errors 
  that one can expect to occur in normal production or measurement. For example, 
  if some factors refer to machine setup for producing some parts, repetition 
  means that the machine is setup once, and several parts are produced under the same setup.
  
  Per default, this software considers proper replications. These are randomized in blocks, 
  such that the first replicate of each run in randomized order is conducted before 
  the second replication of any run starts. Under option \dQuote{repeat.only}, 
  repeated runs occur all together in a row, assuming that they are repeated measurements. 

}
\item{resolution}{
  Resolution is the smallest possible number of factors that appears in a pair of aliased effects, 
  e.g. if there is an alias between a main effect and a 2fi, the resolution is III 
  (resolution is usually denoted in Roman numbers). 
  More technically speaking, resolution is the length of the shortest word.
  
  The literature sometimes uses resolution \code{III*} for designs of resolution III 
  with specific favourable properties. These will be made use of in the future. They have not been implemented yet.
}
\item{response}{
  In an experiment, the response is a quantity that quantifies the performance of 
  the system under investigation. It can be a measurement itself, a quantity calculated 
  from several measurements, ...
}
\item{response surface design}{
  Experimental plans that are meant to model the response as a smooth function of a 
  set of quantitative factors - often second order, i.e. including quadratics of 
  each factor and linear by linear interactions between each pair of factors - 
  are called response surface designs. Such designs can be created by augmenting 
  appropriate regular 2-level fractional factorial designs with center and star points.
}
\item{robustness experiment}{
  A robustness experiment (or robustness study) is dedicated to finding factors 
  (so-called control factors) that can be used in designing the product (or process) 
  for making the response insensitive (=robust) to so-called noise factors that 
  cannot be influenced by the engineer (like customer usage conditions, outside temperature, ...). 
  For analysis of data from robustness experiments (setting aside the famous but 
  questionable S/N ratio approach, cf. e.g. Grove and Davis 1992, Chapter 11), 
  2fis between noise factors and control factors are extremely important.
}
\item{run}{
  Any configuration of factor levels for which a response is recorded is called a run. 
  Some people use the term \dQuote{run} for distinct configurations only so that an 
  8-run design with 2 replications would still be called an 8-run design, 
  while other people would call such a design a 16-run design. This software 
  adopts the first view.
}
\item{run order}{
  Run order refers to the temporal order in which the runs in an experiment 
  are arranged. Usually, the run order should be randomized. However, it is nevertheless 
  often helpful for thinking about the experimental structure, if one can look at the 
  experiment in standard order. Therefore, the attribute run.order of all designs 
  allows to switch back and forth between randomized and standard order. 
}\item{clear}{
  \dQuote{clear} refers to the absence of aliasing. It is customary in the literature 
  to talk of effects of being clear if they are neither aliased with a main effect 
  nor with a 2fi. They may be aliased with higher-order interactions. 
}
\item{WLP}{
  \code{*}short for \dQuote{Word length pattern}, cf. \dQuote{word}
}
\item{word}{
  *For regular 2-level fractional factorial designs, any product of factors that 
  resolves to \code{I} is termed a word. For example, if the product CDEF yields 
  a constant column of \dQuote{+1}, CDEF is a word of length four 
  (as there are four factors involved). The number of (non-trivial) words for 
  a design is \code{2^g-1} with \code{g} denoting the number of generating contrasts.
  
  For irregular designs and mixed-level designs, it is possible to determine the 
  number of generalized words (usually of lengths 3 and 4), by summing up the 
  scalar products of the intercept column with all length 3 or 4 combinations of 
  orthogonal effect columns for three or four different factors (Xu and Wu 2001).
}
\item{Yates order}{
  Frank Yates is a renowned experimenter, who found an ordering of the rows of 
  an experiment that made it easy to calculate effects even in the absence of computers. 
  Originally, \dQuote{Yates order} is the term for this order of the rows. 
  It is now customary to list the columns in the exactly analogous order as well: 
  This order comes about by appending each new factor as the last column and then appending 
  its products with all the preceding columns in the order of occurrence. 
  This leads to the sequence  A, B, AB,    C,    AC, BC, ABC,     D,   AD, BD, ABD, CD, ... 
  It can therefore be said that the columns are listed in Yates order, 
  although \dQuote{Yates order} originally referred to the order of the rows. 
  
  The list \code{Yates} in this software indicates for each column position, which factors 
  are involved in the respective effect. The column numbers of the thus-obtained matrix are 
  a customary way to denote generating contrasts in the literature on 2-level fractional factorials.
}
}
}

\author{ Ulrike Groemping }
\seealso{ See also \code{\link[FrF2]{pb}} and \code{\link[FrF2]{FrF2}} for the functions that do the calculations, 
\code{\link[FrF2:CatalogueAccessors]{catlg}} for the catalogue of regular 2-level fractional factorial designs, 
and \code{\link{Menu.2level}} for overall help on 2-level factorials in this DoE software.}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
