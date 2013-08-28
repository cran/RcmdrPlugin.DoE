\name{RcmdrPlugin.DoEUndocumentedFunctions}
  \alias{RcmdrPlugin.DoEUndocumentedFunctions}
  \alias{activeDataSetDesign2P} 
  \alias{activeDataSetDesign2Pwoc} 
  \alias{activeDataSetDesign2PResp}
  \alias{activeDataSetDesignccd} 
  \alias{activeDataSetDesignlhs} 
  \alias{activeDataSetDesignLongToWide}
  \alias{activeDataSetDesignparam}
  \alias{activeDataSetDesignparamlong}
  \alias{activeDataSetDesignP} 
  \alias{activeDataSetDesignPResp} 
  \alias{activeDataSetDesignQualP} 
  \alias{activeDataSetDesignRemovableP} 
  \alias{activeDataSetDesignWide}
  \alias{activeModelRSM}
  \alias{activeModelLM}
  \alias{checkWarnings}
  \alias{dc} 
  \alias{display.design} 
  \alias{display.design.std.order} 
  \alias{displayblock} 
  \alias{displayCentralCompositeDesigns}
  \alias{displayGlossary} 
  \alias{displaysplitplot} 
  \alias{exist2Designs} 
  \alias{existcatlgPkgs} 
  \alias{existDesign2}
  \alias{existDesign2FrF} 
  \alias{existDesign2pb} 
  \alias{existDesigns} 
  \alias{existDesignsWithResp}
  \alias{existRSMs} 
  \alias{help2level} 
  \alias{helpabout} 
  \alias{helpAnalyze} 
  \alias{helpDopt} 
  \alias{helpExpImp} 
  \alias{helpExport} 
  \alias{helpImport} 
  \alias{helpgeneral} 
  \alias{helpGeneralAnalyze}
  \alias{helpInspect}
  \alias{onHelpSyntax}
  \alias{helpMenus}
  \alias{helpModify} 
  \alias{helpquant} 
  \alias{helpQuantDesignAnalyze} 
  \alias{HowToReImport}
  \alias{initializeDialogDoE} 
  \alias{isDesign2FrF} 
  \alias{isDesign2pb} 
  \alias{justDoItDoE} 
  \alias{listCatlgs} 
  \alias{listDesigns}
  \alias{listDesigns2} 
  \alias{listDesignsWithResp} 
  \alias{listLists} 
  \alias{listObjects} 
  \alias{listRSMs} 
  \alias{loadworkspace}
  \alias{Menu.aggregate}
  \alias{Menu.EffectPlots} 
  \alias{Menu.PlotMeansDoE} 
  \alias{Menu.export} 
  \alias{Menu.wide} 
  \alias{modelFormulaDoE} 
  \alias{rsmFormula} 
  \alias{fpairsc} 
  \alias{summarize.design} 
  \alias{design.info.design} 
  \alias{subsetBoxDoE} 
  \alias{textcorrect} 
  \alias{textentry}
  
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Functions used in menus }
\description{Functions used in menus - these are not needed by users }
%- maybe also 'usage' for other objects documented here.
\usage{
  activeDataSetDesign2P() 
  activeDataSetDesign2Pwoc() 
  activeDataSetDesign2PResp()
  activeDataSetDesignlhs() 
  activeDataSetDesignccd() 
  activeDataSetDesignLongToWide()
  activeDataSetDesignparam()
  activeDataSetDesignparamlong()
  activeDataSetDesignP() 
  activeDataSetDesignPResp() 
  activeDataSetDesignWide()
  activeModelRSM()
  activeModelLM()
  checkWarnings(messages)
  dc() 
  display.design() 
  display.design.std.order() 
  displayblock() 
  displayCentralCompositeDesigns()
  displayGlossary() 
  displaysplitplot() 
  exist2Designs() 
  existDesign2()
  existDesign2FrF() 
  existDesign2pb() 
  existDesigns() 
  existDesignsWithResp()
  existRSMs()
  help2level() 
  helpabout()
  helpAnalyze() 
  helpDopt() 
  helpExpImp() 
  helpExport() 
  helpImport() 
  helpgeneral() 
  helpGeneralAnalyze()
  helpInspect() 
  onHelpSyntax()
  helpMenus()
  helpModify() 
  helpquant() 
  helpQuantDesignAnalyze() 
  HowToReImport()
  initializeDialogDoE(title = "", offset = 0, preventCrisp = FALSE) 
  isDesign2FrF(design) 
  isDesign2pb(design) 
  justDoItDoE(command) 
  listDesigns(envir = .GlobalEnv, ...)
  listDesigns2(envir = .GlobalEnv, type = NULL, ...) 
  listDesignsWithResp(envir = .GlobalEnv, ...) 
  listLists(envir = .GlobalEnv, ...) 
  listObjects(envir = .GlobalEnv, ...) 
  listRSMs(envir = .GlobalEnv, ...)
  loadworkspace()
  Menu.aggregate()
  Menu.EffectPlots() 
  Menu.PlotMeansDoE() 
  Menu.export() 
  Menu.responses()
  Menu.wide() 
  fpairsc(factors, G1, class = 1)
  modelFormulaDoE(frame = modelFrame, hasLhs = TRUE, rhschr="")
  rsmFormula(frame = top, hasLhs = TRUE)
  subsetBoxDoE(window=tab1)
  summarize.design() 
  textcorrect(message) 
  textentry()
}
\arguments{ 
\item{title}{dialog title}
\item{offset}{positioning parameter}
\item{preventCrisp}{ }
\item{design}{data frame of S3 class \code{\link[DoE.base:class-design]{design}}}
\item{message}{message to be displayed (character string)}
\item{factors}{character vector of factor names for G1 and G2 together}
\item{G1}{index numbers for G1}
\item{class}{compromise plan class analogue for creating pairs of variables}
\item{frame}{frame or window to link the widgets to}
\item{window}{frame or window to link the widgets to}
}


\author{ Ulrike Groemping }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }
\keyword{ array }
\keyword{ internal }% __ONLY ONE__ keyword per line
