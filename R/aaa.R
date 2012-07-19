.onAttach <- function(libname, pkgname){
if (!interactive()) return()
Rcmdr <- options()$Rcmdr
plugins <- Rcmdr$plugins
if ((!pkgname %in% plugins) && !getRcmdr("autoRestart")) {
Rcmdr$plugins <- c(plugins, pkgname)
options(Rcmdr=Rcmdr)

closeCommander(ask=FALSE, ask.save=FALSE)

packageStartupMessage(
"\nThis is an EXPERIMENTAL version of package RcmdrPlugin.DoE.\n",
"The workhorse functions it accesses are reasonably well-tested,\n",
"but the GUI-interface can be improved regarding at least\n",
"- meaningful error messages in the messages window for ALL non-desastrous errors\n",
"- parsimony of logged commands\n",
"- beauty of menus\n",
"- help.\n",
"Almost certainly, there will be some bugs for as yet untested user inputs.\n",
"Make sure you DO NOT WORK ON THE ONLY VERSION of your experimental data.\n",
"Always keep a copy of your valuable experimental data stored in a safe place!\n"
)

Commander()
}
}

# get rid of notes in R CMD check for 2.15.1 plus
# must not be within onAttach
if (getRversion() >= '2.15.1') globalVariables(c('.activeDataSet',
'curindex', 'topdes2', 'tn', 'nameVar', 'constraintVar', 'dirVar',
'fileVar', '.stored.designDopt', 'path', 'filename', 'activestab.tn',
'listDesignlhs', 'deschoose2', 'lb', 'buttonsFrame',
'savename.RcmdrPlugin.DoE', 'name.equal.filename', 'direct', 'tab1',
'tab6', 'subsetFrame', 'OKbutton', 'cancelButton', 'helpButton',
'codeVar', 'autolabVar', 'alphaVar', 'halfVar', 'sel.resps', 'top',
'resp.list', 'replacecbVariable', 'level1Var', 'level2Var',
'specialrbVariable', 'hardVar', 'catlgVar', 'comprclassVar',
'facnamlist', 'faclev1list', 'faclev2list', 'faclablist',
'estrbVariable', 'comprrbVariable', 'est2fislist', 'notest2fislist',
'calc.estim', 'comprclassEntry', 'varlistshort', 'infoknopftext',
'selpos', 'nrunOld', 'curfnam', 'curflev1', 'curflev2', 'curflab',
'orderUp', 'orderDown', 'info.window', 'tab2', 'tab3', 'tab4', 'tab5',
'catlgsliste', 'catlgliste', 'curfac', 'PlotMeansDoE.menu',
'levelVariable', 'newnameVar', 'respVar', 'respname', 'csvpath',
'responseQuelle', 'decimal.setting', '.stored.designaugmentlhs',
'blockVar', '.stored.designbbd', 'FrF2Var', '.stored.designccd',
'designs', 'changeable', 'curch', 'contr_rbVariable', 'removable',
'currem', 'resphilf', 'varlistt', 'varlistshortt', 'contours.default',
'contours.at', 'nrowVar', 'ncolVar', 'plottyperbVar', 'imgcbVariable',
'colcbVariable', 'intaclistt', 'nlevlist', 'faclevlist',
'.stored.designfac', 'deschoosefac', 'curnlev', 'curflev', 'loadVar',
'.stored.designlhs', 'lhsVariable', 'rhsVariable', 'linearModel',
'xBox', 'outerOperatorsFrame', 'formulaFrame', 'lhsEntry',
'colnospecifyVariable', 'colnolist', '.stored.designoa', 'deschooseoa',
'curcolno', 'idpos', 'nrunpos', 'nrunslist', 'optimlist',
'.stored.design2pb', 'potentialplotfac', 'curplotfac', 'curresp',
'potentialresp', 'factor.list', 'sel.factors', 'facthilf',
'.move.distances', 'potentialtabfac', 'curtabfac', '.activeModel',
'type', 'topleft2xy', 'modelFrame'))