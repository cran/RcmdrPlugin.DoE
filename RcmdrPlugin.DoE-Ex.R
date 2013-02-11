pkgname <- "RcmdrPlugin.DoE"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
library('RcmdrPlugin.DoE')

assign(".oldSearch", search(), pos = 'CheckExEnv')
cleanEx()
nameEx("fix.design")
### * fix.design

flush(stderr()); flush(stdout())

### Name: fix.design
### Title: Function to preserve class design when editing a design
### Aliases: fix fix.design fix.default
### Keywords: array design

### ** Examples

   ## Not run: 
##D    plan <- oa.design(L18)
##D    fix(plan)
##D     ## manually add some numeric data for the response
##D    response.names(plan)
##D    fix(plan, prompt=TRUE)
##D     ## manually add at least two numeric response columns
##D     ## select from menu which ones are to be responses
##D    response.names(plan)
##D    
## End(Not run)



### * <FOOTER>
###
cat("Time elapsed: ", proc.time() - get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
