.First.lib <- function(libname, pkgname){
if (!interactive()) return()
Rcmdr <- options()$Rcmdr
plugins <- Rcmdr$plugins
if ((!pkgname %in% plugins) && !getRcmdr("autoRestart")) {
Rcmdr$plugins <- c(plugins, pkgname)
options(Rcmdr=Rcmdr)
closeCommander(ask=FALSE, ask.save=FALSE)
cat("\nThis is an EXPERIMENTAL version of package RcmdrPlugin.DoE.\n")
cat("The workhorse functions it accesses are reasonably well-tested,\n")
cat("but the GUI-interface can be improved regarding at least\n")
cat("- meaningful error messages in the messages window for ALL non-desastrous errors\n")
cat("- parsimony of logged commands\n")
cat("- beauty of menus\n")
cat("- help.\n")
cat("Almost certainly, there will be some bugs for as yet untested user inputs.\n")
cat("Make sure you DO NOT WORK ON THE ONLY VERSION of your experimental data.\n")
cat("Always keep a copy of your valuable experimental data stored in a safe place!\n\n")
Commander()
}
}