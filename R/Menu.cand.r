Menu.cand <- function(){
    ### menu for creating candidate design for D-optimization
    initializeDialog(window=top, title=gettextRcmdr("Which type of candidate design ?"))
    
    newff <- function(){
         closeDialog(window=top)
         Menu.fac()
    }
    newoa <- function(){
         closeDialog(window=top)
         Menu.oa()
    }
    newlhs <- function(){
         closeDialog(window=top)
         Menu.lhs()
    }
    newFrF2 <- function(){
         closeDialog(window=top)
         Menu.FrF2level()
    }
    onCancel <- function() {
        if (GrabFocus()) 
            tkgrab.release(top)
        tkdestroy(top)
    }
    onOK <- onCancel
    
    tkgrid(tklabel(top, text=gettextRcmdr("Per default, the active data frame is used as the candidate design.\nThe buttons below are quick links to the most frequently used types of candidate designs."), width="100"), sticky="we", pady="5")
    tkgrid(tkbutton(top, text=gettextRcmdr("Full factorial design"), command=newff, width="100"), sticky="we", pady="5")
    tkgrid(tkbutton(top, text=gettextRcmdr("Orthogonal array at arbitrary numbers of levels"), command=newoa, width="100"), sticky="we", pady="5")
    tkgrid(tkbutton(top, text=gettextRcmdr("Latin hypercube design with only quantitative factors"), command=newlhs, width="100"), sticky="we", pady="5")
    tkgrid(tkbutton(top, text=gettextRcmdr("Fractional factorial 2-level design"), command=newFrF2, width="100"), sticky="we", pady="5")
    
        cancelButton <- buttonRcmdr(top, text = gettextRcmdr("Cancel"), 
            foreground = "red", width = "12", command = onCancel, 
            borderwidth = 3)
    tkgrid(cancelButton, sticky="s",pady="20")
    dialogSuffix(window=top, rows=5, columns=1)
}
