\name{Menu.ExpImp}
\alias{Menu.ExpImp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Exporting and importing Designs}
\description{
  This help file describes facilities for exporting and importing designs.
}
%- maybe also 'usage' for other objects documented here.
\details{
  The \emph{Import} sub menu of the \emph{Design} menu allows to 
  change the working directory, as a general convenience feature. 
  Furthermore, it enables importing an R workspace 
  with more than one object in it - this facility makes the first class \code{design} 
  object in the work space the active data set, and it allows to import 
  a design from the R workspace into R-Commander (=make it the active data set). 
  Furthermore, a previously-exported design can be imported again, 
  using both an edited \code{csv}-file 
  (created from a stored \code{html}- or \code{csv}-file) and an \code{rda}-file. 
  It is assumed that the \code{csv} file contains new responses, while the 
  \code{rda}-file contains all the structural information on the design. (If the 
  csv file contains responses ONLY, these must be in the correct order. If run order 
  information is also contained in the csv file in the correct format, 
  the rows of the file are correctly assigned to the rows of the design, even if 
  reordered.)
  
  The \emph{Export} menu allows to save a complete R workspace or to export an individual 
  experimental design. Furthermore, it also allows to save the 
  generated code scripts (script window) and output (output window). 
  Exporting an individual experimental design to csv and/or html is often useful, 
  as experimental data are usually more easily entered 
  using software like Excel. If the files are handled in a controlled way, 
  response data that are entered 
  as additional columns to an exported \code{csv}- or \code{html}-file can be 
  re-imported later, using the re-import dialog accessible from the import menu. 
  For more detail, 
  cf. \code{\link[DoE.base]{export.design}} for the exporting and 
  \code{\link[DoE.base]{add.response}} for the re-importing based on a 
  \code{csv}-file and an \code{rda}-file.

  Other features are not linked from the Design menu: 
  If an experimental design is available in R format (e.g. by exporting it to rda, 
  as mentioned in the previous paragraph) 
  but responses are stored in a format different from \code{csv}, it is 
  also possible to re-import the response data into the design. If the design without 
  responses is the active design (e.g. after loading the \code{rda} file using 
  the \emph{Load R workspace} menu item from the \emph{Import} sub menu of the \emph{Design} menu), 
  the response data can be imported using the appropriate menu item of the 
  \emph{Import data} sub menu of the \emph{Data management} menu. Subsequently, 
  the response data can be added to the design using the \emph{Add response variable(s)...} 
  item of the \emph{Modify design ...} sub menu of the \code{Design} menu.
  
  It is also possible of course to import experimental data generated elsewhere 
  that do not contain the structural information available with 
  class \code{\link[DoE.base:class-design]{design}} by using the usual import 
  facilities from the \emph{Data management} menu of R-Commander. 
  However, for such experimental data, 
  the usability of special features of package \pkg{RcmdrPlugin.DoE} 
  is severely restricted. 
}
\author{ Ulrike Groemping }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
