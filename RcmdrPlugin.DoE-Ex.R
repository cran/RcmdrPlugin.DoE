pkgname <- "RcmdrPlugin.DoE"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
library('RcmdrPlugin.DoE')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("fix.design")
### * fix.design

flush(stderr()); flush(stdout())

### Name: fix.design
### Title: Functions to preserve class design when editing a design and to
###   use the view data button with class design objects
### Aliases: fix fix.design fix.default showData showData.default
###   showData.design
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
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
