textentry <- function(){
   ## function returns FALSE
   ## but that doesn't matter
   ## input text is under savename.RcmdrPlugin.DoE
   initializeDialog(title=gettextRcmdr("Enter the storage name ..."))
   
   ## make sure that R knows that user cancelled
   assign("savename.RcmdrPlugin.DoE",NULL,envir=.GlobalEnv)
   textVar <- tclVar(gettextRcmdr("stored.design.inputs"))
   textEntry <- tkentry(top, width="20", textvariable=textVar)
   tkgrid(textEntry)

    onOK <- function(){
        text <- tclvalue(textVar)
        closeDialog()
        assign("savename.RcmdrPlugin.DoE", text, envir=.GlobalEnv)
  }

   OKCancelHelp()
        tkgrid(buttonsFrame, sticky="w", columnspan=1)
        dialogSuffix(rows=2, columns=1, focus=textEntry)
        
   }

textcorrect <- function(message){
   ## function returns FALSE
   ## but that doesn't matter
   ## input text is under savename.RcmdrPlugin.DoE
   initializeDialog(title=gettextRcmdr("Enter the storage name ..."))
   
   ## make sure that R knows that user cancelled
   
   textVar <- tclVar(gettextRcmdr(savename.RcmdrPlugin.DoE))
   assign("savename.RcmdrPlugin.DoE",NULL,envir=.GlobalEnv)
   textEntry <- tkentry(top, width="20", textvariable=textVar)
   tkgrid(tklabel(top,text=message))
   tkgrid(textEntry)

    onOK <- function(){
        text <- tclvalue(textVar)
        closeDialog()
        assign("savename.RcmdrPlugin.DoE", text, envir=.GlobalEnv)
   }

   OKCancelHelp()
        tkgrid(buttonsFrame, sticky="w", columnspan=1)
        dialogSuffix(rows=2, columns=1, focus=textEntry)
        
   }

