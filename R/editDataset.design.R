editDataset.design <- function(data, dsname, ...){
    tkmessageBox(title="Warning for editing design objects",
       message="It is discouraged to edit a design object from within R.\nThe only adequate use is to add response data, \nbut you will have to add those to the actual design object post-hoc \n(see Details in ?editDataset.design).", 
       type="ok", icon="warning")
    if (missing(dsname)) dsname <- paste(deparse(substitute(data)), "edited", sep=".")
    NextMethod(data, dsname=dsname)
}