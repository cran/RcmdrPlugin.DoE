\name{RcmdrPlugin.DoE-package}
\alias{RcmdrPlugin.DoE-package}
\alias{RcmdrPlugin.DoE}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{R-Commander plugin package that implements design of experiments facilities 
 from packages DoE.base, FrF2 and DoE.wrapper into the R-Commander}
\description{
  The plugin adds a Design menu to the R-Commander. From this, various types of 
  experimental plans can be generated, imported, augmented with responses or further runs, 
  and - in a limited way - analysed. Of course, other R-Commander functionality can 
  also be used on the designs.
  
  The plugin is currently a beta version. Reports on bugs or inconveniences are 
  very welcome.
}
%- maybe also 'usage' for other objects documented here.
\section{Prior Remark for Windows users}{
The R GUI should be installed with the Single Document Interface (SDI) mode 
instead of the default MDI mode. John Fox, the author of R-Commander, has described 
how to change MDI to SDI, if R has been installed in the wrong mode. 
It is strongly discouraged to run the R-Commander under the MDI mode, 
as it happens very frequently that windows suddenly disappear. They usually 
have iconized only and can be retrieved from the taskbar; nevertheless, this behavior 
can be very annoying and can be avoided by using R in SDI mode.}

\section{Suggests field is not meant as a suggestion}{
For ensuring valid checks of package \pkg{RcmdrPlugin.DoE}, 
it was necessary to include package \pkg{FrF2.catlg128} under suggested packages. 
Note that most users will not need that package and should not install it.
}

\section{Beta Version!}{
\pkg{RcmdrPlugin.DoE} is currently in beta shape. The calculation functions have 
been reasonably tested within the underlying calculation packages. Usage of the menus 
has of course also been tested, but there are very likely untested scenarios where 
something does not work properly. Bug reports are therefore invited!

The logged commands are currently aiming to be correct but not to be didactic, 
since they have been generated with the purpose to obtain a valid result from the inputs with as 
little programming effort as possible. They often contain many superfluous inputs, 
since default inputs could also be omitted. For example, while \code{FrF2(8,4)} would 
produce a regular fractional factorial design with 8 runs, 4 factors and default factor names and levels, 
the respective logged command is three rows long.

The help files will have to be improved upon. Suggestions are welcome (where did you get stuck?).

Current users of this package have to accept acting as beta testers. 
It is particularly important to never work with the one and only data original, but have 
the valuable experimental data themselves stored in a safe place.
}

\section{Covered methodology and planned extensions}{
Full factorial designs, orthogonal main effects designs, 
regular and non-regular 2-level fractional factorial designs, central composite and Box-Behnken 
designs, latin hypercube samples, and simple D-optimal designs can currently be generated from the GUI.

Extensions to cover further latin hypercube designs as well as more advanced 
D-optimal designs (with blocking) are planned for the future.

\pkg{RcmdrPlugin.DoE} implements functionality from packages \pkg{DoE.base}, \pkg{FrF2}, 
\pkg{DoE.wrapper} (which in turn implements functionality from several other packages), 
and also from package \pkg{rsm}. All package allow more flexibility through command line 
programming than through using the GUI. Nevertheless, usage of the GUI should be sufficient 
for reasonable creation and analysis of results at least in standard situations.

So far, there is no tutorial available. For experienced users of other DoE Software, 
the menus may be reasonably self-explanatory. Please feel free to contact me with issues 
regarding the documentation; it is very informative and will help improve documentation, 
if I understand where users get stuck. However, I am of course NOT a help desk for experimentation or 
issues with using R or the R-Commander.
}

\author{ Ulrike Groemping }
\seealso{ See also \code{\link[DoE.base]{DoE.base-package}}, 
\code{\link[FrF2]{FrF2-package}}, 
\code{\link[DoE.wrapper]{DoE.wrapper-package}} for the packages behind 
this R-Commander plugin.}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
