\name{fix.design}
\alias{fix}
\alias{fix.design}
\alias{fix.default}
\alias{showData}
\alias{showData.default}
\alias{showData.design}

%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Functions to preserve class design when editing a design 
  and to use the view data button with class design objects}
\description{
Function showData allows to view data, function fix allows to edit data. 
For designs, it is only permitted to 
type in response data and other additional information 
like date or comments for experimental runs in R, such that all attributes 
of the design objects are updated accordingly. However, it is recommended 
to do such editing tasks outside of R, as R is not ideal for these. 
}
\usage{
### generic function
fix(x, ...)
\method{fix}{default}(x, ...)
\method{fix}{design}(x, ..., prompt=FALSE)
showData(dataframe,colname.bgcolor = "grey50", 
       rowname.bgcolor = "grey50", 
       body.bgcolor = "white", 
       colname.textcolor = "white", 
       rowname.textcolor = "white", 
       body.textcolor = "black",
       font = "Courier 12", 
       maxheight = 30, 
       maxwidth = 80, 
       title = NULL,
       rowname.bar = "left",
       colname.bar = "top",
       rownumbers = FALSE, 
       placement = "-20-40",
       suppress.X11.warnings = TRUE)
\method{showData}{default}(dataframe, 
       colname.bgcolor = "grey50", 
       rowname.bgcolor = "grey50", 
       body.bgcolor = "white", 
       colname.textcolor = "white", 
       rowname.textcolor = "white", 
       body.textcolor = "black",
       font = "Courier 12", 
       maxheight = 30, 
       maxwidth = 80, 
       title = NULL,
       rowname.bar = "left",
       colname.bar = "top",
       rownumbers = FALSE, 
       placement = "-20-40",
       suppress.X11.warnings = TRUE)
\method{showData}{design}(dataframe,
       colname.bgcolor = "grey50", 
       rowname.bgcolor = "grey50", 
       body.bgcolor = "white", 
       colname.textcolor = "white", 
       rowname.textcolor = "white", 
       body.textcolor = "black",
       font = "Courier 12", 
       maxheight = 30, 
       maxwidth = 80, 
       title = NULL,
       rowname.bar = "left",
       colname.bar = "top",
       rownumbers = FALSE, 
       placement = "-20-40",
       suppress.X11.warnings = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{an object of class \code{\link{design}}}
  \item{\dots}{ further arguments to function \code{\link[utils]{fix}} 
              from package \pkg{utils}}
  \item{prompt}{ logical asking whether user is to be prompted for selecting 
                 which new numeric variable is a response; default: all new numeric 
                 variables are response variables }
    \item{dataframe}{data frame; if of S3 class \code{design}, the method for \code{design} is used, 
       otherwise the default method}
   \item{colname.bgcolor}{as documented in \pkg{\link[relimp:showData]{relimp}}}
      \item{rowname.bgcolor}{as documented in \pkg{\link[relimp:showData]{relimp}}}
      \item{body.bgcolor}{as documented in \pkg{\link[relimp:showData]{relimp}}}
      \item{colname.textcolor}{as documented in \pkg{\link[relimp:showData]{relimp}}}
      \item{rowname.textcolor}{as documented in \pkg{\link[relimp:showData]{relimp}}}
      \item{body.textcolor}{as documented in \pkg{\link[relimp:showData]{relimp}}}
      \item{font}{as documented in \pkg{\link[relimp:showData]{relimp}}}
      \item{maxheight}{as documented in \pkg{\link[relimp:showData]{relimp}}}
      \item{maxwidth}{as documented in \pkg{\link[relimp:showData]{relimp}}}
      \item{title}{as documented in \pkg{\link[relimp:showData]{relimp}}}
      \item{rowname.bar}{as documented in \pkg{\link[relimp:showData]{relimp}}}
      \item{colname.bar}{as documented in \pkg{\link[relimp:showData]{relimp}}}
      \item{rownumbers}{as documented in \pkg{\link[relimp:showData]{relimp}}}
      \item{placement}{as documented in \pkg{\link[relimp:showData]{relimp}}}
      \item{suppress.X11.warnings}{as documented in \pkg{\link[relimp:showData]{relimp}}}
}
\details{
Function \code{fix} is made into an S3 generic. The default method preserves the 
functionality from package \pkg{utils} for all objects that are not of class 
\code{\link{design}}. 

Function \code{fix} immediately commits all changes, overwriting the original object without further notice. 
This is also true for the method applicable to objects of class \code{design}, as long as 
the changes do not destroy the properties of the design. 
It is therefore wise to keep a copy of the original, 
until correctness of the changes is ascertained. 

For design objects, changes are only committed, 
if no forbidden editing has been done: Changes in 
values of the experimental factors are not allowed and prevent storing edited 
information (only reported after the fact, user has no choice in the matter). \cr 
If the editing would destroy the structure of the design, 
e.g. because something was typed into an empty row of the 
data editor which leads to an extra row with missing values, 
a prompt allows to abort the changes; if changes are committed, the data frame 
is stored under its original name without any of its attributes (and can thus 
no longer be treated by any special tools for design objects).

    The default method for \code{showData} is the function from package \pkg{\link[relimp:showData]{relimp}}, 
    which is also used in R-Commander for viewing data sets. The method for class \code{design} objects 
    is needed for successfully using the view button of \code{design} dataframes in R-commander. 
    They are undesigned before viewing. However, it is preferrable to inspect a printout from function 
    \code{print.design} which provides additional information. 
    This can also be done in the R-Commander using the \code{Design} menu in package \code{RcmdrPlugin.DoE} 
    (to be available soon).      

}
\value{
For the default function, refer to \code{\link[utils]{fix}} and the links therein. 

The function for class \code{\link{design}} adds the numeric version 
(\code{\link{as.numeric}}) of all newly-entered variables to the 
\code{desnum} attribute of \code{x} and appends the names of all 
newly-entered response variables to the 
\code{response.names} element of the \code{design.info} attribute. 

If numeric variables are to be entered that are no response variables, the 
function should be called with \code{prompt=TRUE} so that these are not 
taken to be response variables. Automatic default analyses (not yet available) would otherwise 
include analyses for these variables.
}

\section{Warning}{ NOTE: Editing the data in R is only helpful for very small examples, 
especially when using the default editor under Windows. 

NEVER do it to the one and only original data file. 
It does irrevocably replace it in many cases, even if you realize the mistakes 
you have made before leaving the editor window. 
}

\author{ Ulrike Groemping }
\seealso{ See also \code{\link[utils]{fix}} and the links therein}
\examples{
   \dontrun{
   plan <- oa.design(L18)
   fix(plan)
    ## manually add some numeric data for the response
   response.names(plan)
   fix(plan, prompt=TRUE)
    ## manually add at least two numeric response columns
    ## select from menu which ones are to be responses
   response.names(plan)
   }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ array }
\keyword{ design }% __ONLY ONE__ keyword per line
