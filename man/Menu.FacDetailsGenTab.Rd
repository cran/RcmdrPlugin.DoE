\name{Menu.FacDetailsGenTab}
\alias{Menu.FacDetailsGenTab}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{How to use the factor details tab for general designs}
\description{This help file describes how to input factor details for general designs}
\section{Inputs on tab Factor Details for all such menus}{
\describe{
\item{Modify factor details for selected factor}{ is the frame in which changes 
     can be made. A factor can be selected by clicking on the arrow below \code{Select} 
     (and also by clicking on an item in the listboxes below the frame). 
     Repeatedly jumping through the frame with the \code{Tab} key automatically 
     cycles through the factors one by one.
     
     The number of levels MUST BE ENTERED for each factor. 
     (Jumping out of the entry box without entering a valid number of levels 
     creates an error message popup.)
     The levels themselves are then automatically set to the integer numbers from one 
     to the number of levels. Different levels (separated by blanks) can be manually 
     entered. It is recommended to use the automatic levels for preliminary checks 
     on available designs and their properties, but to enter meaningful 
     factor levels for experiments that will actually be run.
     
     The entry \code{Comment or label} is included into an exported html file as 
     annotation for the factor. This may be useful for conducting the experiment.
     }
\item{Buttons for changing the factor order}{
     If factor details have been entered and it is discovered later that the factors 
     are needed in a different order (e.g. because of the alias structure of a 
     regular 2-level fractional factorial design), the buttons \code{Move Up} and 
     \code{Move Down} can be used for changing the order of the factors.
     }
\item{Manually specify column numbers for array}{ is a checkbox for the orthogonal 
     array menu that is available if a specific design has been selected by ID 
     (from a drop-down menu on the Base Settings tab). 
     If this box is checked, the factor details include an additional column 
     for the column numbers that needs to be filled with a valid column number for 
     each factor. The number of levels is then automatically derived. 
     
     Specifying column numbers can be useful, if an expert user has investigated the 
     properties of a design and wants to obtain a better-suited design than the 
     default one. For example, when accomodating two 2-level factors, one 4-level factor 
     and one 8-level factor in \code{L64.2.5.4.10.8.4}, it is better to use columns 2 and 3 
     than the default columns 1 and 2 for the two 2-level factors. With the latest 
     version of the software, this optimization can also be done automatically using 
     the setting \dQuote{min3} for Automatic Optimization on the \dQuote{Base Settings} tab;
     nevertheless, because of performance reasons, it may be wise to specify known good column 
     numbers, if available. 
     Note that explicit specification of column numbers overrides any optimization request.
    }
}
}

\author{ Ulrike Groemping }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
