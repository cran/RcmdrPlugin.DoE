Menu.IAPlot <- function(){
   .activeDataSet <- ActiveDataSet()
   di <- design.info(eval(parse(text=.activeDataSet)))
   factors <- names(di$factor.names)
   
   onOK <- function(){
     select <- which(factors %in% unlist(strsplit(getSelection(factorsBox)," ")))
     abbrev <- as.numeric(getSelection(abbrevBox))
     show.alias <- as.logical(as.numeric(as.character(tclvalue(showaliVar))))

     ## selected plots
     ## the interim result linmod is produced within the R-commander workspace
     ## to make the generated code also work, logger also shows generation and removal of linmod
     ##     (of course not ideal if there actually were an object called linmod in the users workspace!)
     ## eventually provide a method for class design in package FrF2 --> this problem goes away
     ## 
     if (tclvalue(plottyperbVar)=="ME"){ 
       command <- paste("MEPlot(",.activeDataSet,", abbrev=",abbrev, ", select=c(", paste(select,collapse=","),"))", sep="")
       logger(command)
       hilf <- justDoItDoE(command)
       if (class(hilf)[1] == "try-error"){
             errorCondition(window=top,recall=NULL, message=gettextRcmdr(hilf))
             return()
       }
     }
     else{ 
       command <- paste("IAPlot(",.activeDataSet, ", abbrev=",abbrev,", show.alias=",show.alias,", select=c(", paste(select,collapse=","),"))", sep="")
       logger(command)
       hilf <- justDoItDoE(command)
       if (class(hilf)[1] == "try-error"){
             errorCondition(window=top,recall=NULL, message=gettextRcmdr(hilf))
             return()
       }
     }
     if (length(grep("splitplot",di$type)) > 0)
         warning("Estimated effects for whole plot factors may be less reliable than others.")
     closeDialog(window=top)
    }
   
   initializeDialog(title=gettextRcmdr("Interaction plots for 2-level factors"))
   factorsBox <- variableListBox(top, variableList=factors, selectmode="multiple",
        title=gettextRcmdr("Factors (select at least two)"),
        initialSelection=NULL)
   abbrevpossibilities <- as.character(1:10)
   abbrevBox <- variableListBox(top, variableList=abbrevpossibilities, selectmode="single",
        title=gettextRcmdr("Length of abbreviations"),
        initialSelection=3)

   plottyperbVar <- tclVar("ME")
   MErb <- ttkradiobutton(top, text="Main effects plots",
        variable=plottyperbVar,value="ME")
   IArb <- ttkradiobutton(top, text="Interaction plots",
        variable=plottyperbVar,value="IA")

   if (length(di$aliased$fi2)>0) showaliVar <- tclVar("1") 
      else showaliVar <- tclVar("0")
   showalicb <- ttkcheckbutton(top, text="Show alias connections in interaction plots ?",
        variable=showaliVar)
   tkgrid(getFrame(factorsBox), getFrame(abbrevBox), sticky="n")
   tkgrid(MErb, sticky="w")
   tkgrid(IArb, showalicb, sticky="w")


    OKCancelHelp(helpSubject="Menu.IAPlot")
    tkgrid(buttonsFrame, sticky="w")
    dialogSuffix(rows=2, columns=2)
}