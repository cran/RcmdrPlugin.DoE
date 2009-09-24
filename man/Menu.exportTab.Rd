\name{Menu.exportTab}
\alias{Menu.exportTab}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Using the export menu}
\description{
  This help file describes the design exporting options.
  Default choices are no exporting for design generation forms or 
  exporting an html file and an rda file, when separately calling the export 
  routine. 
}
%- maybe also 'usage' for other objects documented here.
\details{
\describe{
\item{design information}{ At the top of the form, the design name is shown 
      (provided on the first tab of the design generation form) 
      or can be chosen from the designs available in the R work space. }
\item{(How to) export radio buttons}{ determine the type(s) of export file(s). 
     Choices are that \cr
     no export file is generated (export tabs on design generation menus),\cr
     OR all file types listed below are generated,\cr 
     OR only an \code{rda} file is generated,\cr
     OR an \code{rda} file and an \code{html} file are generated, \cr
     OR an \code{rda} file and a \code{csv} file are generated.\cr
     If Microsoft Excel is to be used in providing the actual experimenters 
     with an annotated file for experimentation, usage of an \code{html} 
     file is recommended. After the experiment has been carried out, the data 
     can be stored as \code{csv} and reimported into R, where they can be processed 
     using the structural information from the design, if the stored \code{rda} file 
     is also provided. }
\item{decimal separator radio buttons}{determine the decimal separator to be used;
     relevant, if the data contain decimal numbers; the default uses the \code{OutDec} 
     option of the R system, the other choices explicity determine the decimal separator. 
     If chosen correctly, the html file can be opened in Excel with decimal numbers 
     read as such; furthermore, decimal separator \dQuote{,} is taken to also mean 
     separator \dQuote{;}, i.e. \code{csv} files also use the matching separator 
     (comma corresponds to \code{csv2}). }
\item{The Storage Directory}{should be changed with the selection button. }
\item{Provide the file name}{without ending in the file names field. 
     Files with this name and the appropriate endings are produced, 
     as chosen by the \dQuote{(How to) export} radio buttons.
     }
\item{The replace checkbox}{can be checked, if you want to replace previously 
     created files. In this context, note that the rda file exports an R workspace 
     that ONLY includes the generated design and NOT the complete R workspace content. \cr
     If you want to store the complete R workspace, use the appropriate menu item 
     on the R commander file menu (usually the left-most menu).}
}
}
\note{
  The purpose of exporting to \code{html} or \code{csv} format is the possibility 
  to edit response data outside of R, e.g. for persons without access to R who 
  conduct the experiment. 
  
  The resulting edited data file can be stored in 
  \code{csv} format and re-imported into R. If re-importing is done with the 
  appropriate menu item in the \emph{Import} sub menu of the \emph{Design} menu, 
  providing the stored \code{rda} file along with the edited data file, 
  all structural information stored with the design is available. 
  
  If users prefer to store the edited data file in a format different from 
  \code{csv}, the data can be re-imported in two steps: First, the 
  edited data file must be imported with R-Commanders \emph{Data management} 
  menu. Afterwards, the response information can be added to the design using the 
  menu item \emph{Add response variable(s) ...} from the sub menu \emph{Modify design} 
  of the menu \code{Design}.
  
  }
\author{ Ulrike Groemping }
\seealso{ See Also function \code{\link[DoE.base]{export.design}} from package \pkg{DoE.base} 
for the function that actually does the exporting}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
