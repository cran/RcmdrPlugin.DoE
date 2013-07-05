\name{Menu.FacDetails2Tab}
\alias{Menu.FacDetails2Tab}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{How to use the factor details tab for 2-level and quantitative designs}
\description{This help file describes how to input factor details for 2-level and quantitative designs}
\section{Inputs on tab Factor Details for all such menus}{
\describe{
\item{Common factor levels}{ can be checked to define a common set of factor levels 
     that is used for all factors. The first level corresponds to -1 or the lower 
     bound of the range of a quantitative factor, the second level to +1 or the upper 
     bound of the range of a quantitative factor. 
     
     When unchecking the checkbox, levels can be individually adjusted for each factor. 
     WARNING: Re-checking the box after individual level changes looses all settings.}
\item{Modify factor details for selected factor}{ is the frame in which changes 
     can be made. A factor can be selected by clicking on the arrow below \code{Select} 
     (and also by clicking on an item in the listboxes below the frame). 
     Repeatedly jumping through the frame with the \code{Tab} key automatically 
     cycles through the factors one by one.
     
     The entry \code{Comment or label} is included into an exported html file as 
     annotation for the factor. This may be useful for conducting the experiment.
     }
\item{Buttons for changing the factor order}{
     If factor details have been entered and it is discovered later that the factors 
     are needed in a different order (e.g. because of the alias structure of a 
     regular 2-level fractional factorial design), the buttons \code{Move Up} and 
     \code{Move Down} can be used for changing the order of the factors.
     }
\item{Hard to change factors}{can be specified for regular 2-level fractional factorial 
     designs, if special choices have been activated by the checkbox below the tab. 
     This ascertains that the experiment can be run with as few as possible changes 
     in the first (number to be specified) factors. 
     
     This should only be used if absolutely unavoidable, as it worsens the 
     information on the affected factors. }
}
}

\author{ Ulrike Groemping }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
