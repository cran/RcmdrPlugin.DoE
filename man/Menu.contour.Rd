\name{Menu.contour}
\alias{Menu.contour}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Contour plots for linear models with quantitative regressors}
\description{Contour plots for linear models with quantitative regressors}

\section{Overview}{
  This dialog allows to specify pairs of numeric regressors for which the 
  response surface is to be displayed. Each display can be a contour plot 
  with or without image colours, a 3D-perspective plot or an image plot.
  
  For looking at several plots simultaneously, numbers of rows and columns 
  can be specified. On OK, all plots are generated. One should always choose 
  the number of rows and columns such that all requested plots fit on one display, 
  otherwise the early plots will be overwritten by the later plots.
  
  The functions behind the functionality are \code{\link[rsm:contour.lm]{contour}}, 
  \code{persp} and \code{image}. 
  
  The second tab on the dialogue allows to specify at which values variables not 
  in the plot are to be fixed. The default is the average for numeric variables, 
  the first level for factors. (
}
\section{Inputs}{

\describe{
\item{number of rows and number of columns}{
     These are used in the \code{mfrow} function for creating the 
     row and column layout for arranging several plots.\cr
     Within an R session, modifications are retained for further 
     calls of the dialog.}
\item{Select plot type }{Contour plots show contours of constant height, 
     3D perspective plots show the surface in mesh form; both come with or 
     without coloring. The image plots 
     show colours only, without contours. It is mainly 
     a matter of taste which plots to use.\cr
     Within an R session, modifications are retained for further 
     calls of the dialog.}
\item{Select pairs for plotting }{
     The default choice plots pairs for all numeric factors. 
     This can be too many plots for one page in case of many factors. \cr
     For the top radio button, pairs can be conveniently formed from two groups 
     of variables: \cr
     1: each pair within group 1\cr
     2: each pair within both groups 1 and 2 (but not pairs \emph{between} groups)\cr
     3: each pair that involves any factor from group 1\cr
     4. each pair between groups 1 and 2 (but no pair \emph{within} any group)\cr
     Initially, all variables are in group 1. They can be moved between groups 
     by selecting them with the mouse and moving them with the arrow buttons.
     
     In case of the bottom (manual selection) radio button choice, 
     move selected 2-factor pairs between 
     the available list (those are not selected) and the selected list by 
     selecting them with the mouse (multiple selections possible) and 
     moving them with the arrow buttons.\cr
     These choices have to be redone with each call to the dialog.}
\item{Modify slice positions }{
      Each response surface varies the values of two numeric variables, 
      keeping all other variables fixed. These fixed values are also called the 
      slice positions. The default slice positions are the average for numeric variables
      and the first level for factors. These can be modified on the second tab of 
      this dialog. Within an R session, modifications are retained for further 
      calls of the dialog w.r.t the same model.}
}
}
\author{ Ulrike Groemping }
\seealso{ See also \code{\link[rsm:contour.lm]{contour}} for the functions 
that do the actual plotting}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }% __ONLY ONE__ keyword per line
