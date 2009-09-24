Menu.model <- function(){
    designs <- listDesignsWithResp()
    .activeDataSet <- ActiveDataSet()
     putRcmdr("resphilf", NULL)  ### needed for correction of automatic formula, 
                          ### if individual response of wide design is to be analyzed
  #  if ((length(designs) == 1) && !is.null(.activeDataSet) && designs==.activeDataSet) {
  #      Message(message=gettextRcmdr("There is only one design in memory."),
  #              type="warning")
  #      tkfocus(CommanderWindow())
  #      return()
  #      }
    if (length(designs) == 0){
        Message(message=gettextRcmdr("There are no designs with responses from which to choose."),
                type="error")
        tkfocus(CommanderWindow())
        return()
        }
    degreeVar <- tclVar("NULL")
    initializeDialog(window=top, title=gettextRcmdr("Select Design and Degree"))
    degreeEntry <- ttkentry(top, width=7, textvariable=degreeVar)
    degreelab <- ttklabel(top, text="degree")
    designsBox <- variableListBox(top, designs, title=gettextRcmdr("Designs (pick one)"),
        initialSelection=if (is.null(.activeDataSet) || !.activeDataSet %in% designs) NULL 
             else which(.activeDataSet == designs) - 1)
    onOK <- function(){
        activeDataSet(getSelection(designsBox))
        .activeDataSet <- ActiveDataSet()
        di <- design.info(eval(parse(text=.activeDataSet)))
        command <- paste("formula(",.activeDataSet,")")
        hilf <- justDoItDoE(command)
        if (class(hilf)[1]=="try-error") {
            errorCondition(window=top,recall=Menu.model, message=gettextRcmdr(hilf))
             return()
            }
        
        if (!is.null(di$responselist)){
          if (di$response.names[1]==di$responselist[1,1]){
          tk_messageBox(type="ok","This is a wide format repeated measurement or parameter design.\n
           You may want to aggregate it before applying a default analysis.\n
           Cancel the dialogue and go to \n
           Combine or Modify Designs --> Change from long to wide format \n
           for this purpose.")
           putRcmdr("resphilf", di$response.names[1])
          }
          ### hier weiter mit Änderung der Response in erste Einzel-Response!
          } 
        if (di$repeat.only | (length(grep("param",di$type))>0 & is.null(di$responselist))){
          tk_messageBox(type="ok","This is a long format repeated measurement or parameter design.\n
           It has to be brought into wide format and subsequently should be aggregated before default analysis.\n
           Go to Combine or Modify Designs --> Change from long to wide format for this purpose.")
          closeDialog()
          tkfocus(CommanderWindow())
          } 
        else{
        if (length(grep("splitplot", di$type))>0) 
          warning("The default analysis can be misleading for splitplot designs!
          Whole-plot factors are often subject to much more variability than split-plot factors.")
        putRcmdr("degree", tclvalue(degreeVar))
        closeDialog()
        Menu.linearModelDesign(response=resphilf)
        }
        }
    OKCancelHelp(helpSubject="Menu.model")
    tkgrid(getFrame(designsBox), degreelab, degreeEntry, sticky="n")
    tkgrid.configure(degreeEntry, sticky="nse")
    tkgrid.configure(degreelab, sticky="nse")
    tkgrid(buttonsFrame, sticky="w")
    dialogSuffix(window=top, rows=2, columns=1)
    }
