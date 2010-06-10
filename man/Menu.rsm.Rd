\name{Menu.rsm}
\alias{Menu.rsm}

\title{RcmdrPlugin.DoE response surface model Dialog for experimental data}
\description{
  This dialog is used to specify a response surface model to be fit by the \code{\link[rsm]{rsm}} function.
}
\usage{
Menu.rsm(response = NULL, factor.names = NULL)
}
\arguments{
\item{response}{ response to apply the response surface model to}
\item{factor.names}{ character vector of factor names to apply the response surface model to}
}
\details{
The LHS model-formula box specifies the response variable to be used in the model; it
may be a variable name or an expression evaluating to the response variable, such as
\code{log(income)}.

The RHS model-formula box specifies the right-hand (i.e., predictor) side of the model.
If you are interested in the details, see \code{\link[rsm]{rsm}}. The formula 
consists of first order (FO), quadratic (PQ) and interaction (TWI) terms. Individual 
variables can be omitted from the formula or re-entered by editing the dialog. It is 
also possible but usually not necessary to enter extra variables. 
An existing blocking variable is per default included. \cr
If the analysis is coded, the variables must be given as \code{x1}, \code{x2}, and so forth, otherwise by 
their original names. \cr
For redoing from within this dialog, manually empty the RHS model-formula box; when clicking the FO, TWI, PQ and SO 
while some factors are selected in the variables box, the respective terms are entered to the model. 
}

\author{Ulrike Groemping, adapted to this situation from menu by John Fox}

\seealso{\code{\link[rsm]{rsm}}, \code{\link[DoE.wrapper]{rsmformula}}, \code{\link[DoE.wrapper]{code.design}}}

\keyword{models}
\keyword{design}
