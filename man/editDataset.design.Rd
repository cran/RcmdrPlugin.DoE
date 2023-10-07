\name{editDataset.design}
\alias{editDataset.design}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{function to add a warning to the Rcmdr editDataset function}
\description{
invokes a warning message before the data.frame method of editDataset is called
}
\usage{
\method{editDataset}{design}(data, dsname, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
an object of class \code{design}
}
  \item{dsname}{
a character string argument, which is always missing in the usage of the function
}
  \item{\dots}{
  not used
}
}
\details{
It is discouraged to edit design objects from within R. Users should export the 
design and re-import it after adding response data.

Nevertheless, it is possible to add response values by adding numeric columns to 
the design with the editor (never edit factors!), 
and users will have to attach the responses added 
to an edited design to their original design afterwards, using e.g. the \cr
Modify design -> Add response variables ...\cr
menu, providing the edited data set as the R object that contains the responses.
}
\value{
a data.frame with \code{.edited} appended to the original design name 
and without any class design properties.

If editing involved adding response data, the edited file can be used 
for adding respones to the design object (see Details section).
}
\author{
Ulrike Groemping
}
\section{Warning }{
Editing a class design object is seldom useful.
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
\keyword{ utilities }
