\name{Menu.linearModelDesign}
\alias{Menu.linearModelDesign}

\title{RcmdrPlugin.DoE Linear Model Dialog for 2-level Experiments}
\description{
  This dialog is used to specify a linear model to be fit by the \code{\link[stats]{lm}} function.
}
\usage{
Menu.linearModelDesign(response = NULL)
}
\arguments{
\item{response}{ response to apply the linear model to}
}
\details{
The left model-formula box specifies the response variable to be used in the model; it
may be a variable name or an expression evaluating to the response variable, such as
\code{log(income)}.

The right model-formula box specifies the right-hand (i.e., predictor) side of the model.
If you are interested in the details, see \code{\link[stats]{lm}}.

You can type directly in the model formula boxes. Alternatively, double-clicking the left mouse
button on a variable in the variable-list transfers it to the left-hand side of the model (if
it is empty) or to the right-hand side. You can also enter operators and parentheses using the buttons
above the formula.

For regular 2-level fractional factorial experiments, initially one often wants to look at all 
interactions up to a certain degree (e.g. 2 or 3). This is possible by selecting the degree of the 
model from the drop-down menu. For (half) normal plots of the effects, choose the degree high enough that 
there are \code{nruns-1} effects in the plot.

If the active model is from this box or could have come from this box, 
the initial values of the left-hand-side and 
right-hand-side of the formula are retained from the previous model.
}

\author{Ulrike Groemping, adapted to this situation from menu by John Fox}

\seealso{\code{\link[stats]{lm}}, \code{\link[FrF2]{FrF2}}}

\keyword{models}
\keyword{design}
