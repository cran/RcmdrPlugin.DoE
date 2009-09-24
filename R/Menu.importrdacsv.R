Menu.importrdacsv <- function(){
## Aktualisierung des neuen Namens bei Änderung in designsel funktioniert noch nicht
## tkbind event vermutlich nicht gut gewählt!

putRcmdr("nameVar", tclVar(""))
putRcmdr("newnameVar", tclVar(""))
putRcmdr("designs", listDesigns())

onOK <- function(){
     closeDialog(window=topdes2)
  ### capture error messages from export function
        name <- tclvalue(nameVar)
        newname <- tclvalue(newnameVar)
        if (is.element(newname, listObjects()))
          {
          if ("no" == tclvalue(checkReplace(newname, gettextRcmdr("Object"))))
            {
              errorCondition(window=topdes2,recall=Menu.importrdacsv, 
              gettextRcmdr("Introduce another name for the new data.frame, or allow replacing."))
              return()
             }
          }
        if (!is.valid.name(name)) {
            errorCondition(window=topdes2,recall=Menu.importrdacsv, 
                    message=paste('"', name, '" ', gettextRcmdr("is not a valid name."), sep=""))
            return()
          }
        if (!is.valid.name(newname)) {
            errorCondition(window=topdes2,recall=Menu.importrdacsv, 
                    message=paste('"', newname, '" ', gettextRcmdr("is not a valid name."), sep=""))
            return()
          }
    ### adding a response
        putRcmdr("csvpath", tclvalue(fileVar))
        name <- tclvalue(nameVar)
        newname <- tclvalue(newnameVar)
              if (tclvalue(decimalrbVariable)=="default") command <- paste("add.response(",name,
                     ", ",dQuote(csvpath), ", replace=",
                     as.logical(as.numeric(tclvalue(replacecbVariable))),")",sep="")
              else command <- paste("add.response(",name,
                     ", ",dQuote(csvpath), ", replace=",
                     as.logical(as.numeric(tclvalue(replacecbVariable))),", InDec=",
                     dQuote(tclvalue(decimalrbVariable)),")",sep="")

        assign(newname, justDoItDoE(command), envir=.GlobalEnv)
        if (class(newname)[1]=="try-error"){
             errorCondition(window=topdes2, recall=Menu.addresponse, message=gettextRcmdr(newname))
             return()
            }
        logger(paste(newname, "<-", command))
        activeDataSet(newname)
        closeDialog(window=topdes2)
        tkwm.deiconify(CommanderWindow())
        tkfocus(CommanderWindow())
  }
dquote <- function(obj){
    ## quote vector elements for use as character vector in a command
    aus <- rep("",length(obj))
    wopt <- options("warn")[[1]]
    options(warn=-1)
    for (i in 1:length(obj)) if (is.na(as.numeric(obj[i]))) aus[i] <- paste('"',obj[i],'"',sep="") 
          else aus[i] <- obj[i]
    options(warn=wopt)
    aus
}

 onChangerdaFile <- function(){
     fn <- tclvalue(tkgetOpenFile(filetypes=
        gettextRcmdr('{"R Data Files" {".rda" ".Rda" ".RDA" ".RData"}} {"All Files" {"*"}}')))
     if (!fn=="") {
        putRcmdr("loadVar", tclVar(fn))
        tkconfigure(loadEntry, textvariable = loadVar)
        command <- paste("load(",dQuote(tclvalue(loadVar)),")")
        justDoItDoE(command)
        logger(command)
        putRcmdr("designs", listDesigns())
        tkconfigure(designsel, values=designs)
        if (length(designs)>0) tcl(designsel, "current", 0)
        }
 }

 onChangecsvFile <- function(){
     fn <- tclvalue(tkgetOpenFile(filetypes=
        gettextRcmdr('{"csv files" {".csv" ".Csv" ".CSV"}} {"All Files" {"*"}}')))
     if (!fn=="") {
        putRcmdr("fileVar", tclVar(fn))
        tkconfigure(fileEntry, textvariable = fileVar)
        }
 }
     namechange <- function(){
        if (tclvalue(newnameVar)==".withresp" & !tclvalue(nameVar)=="")
        putRcmdr("newnameVar", paste(tclvalue(nameVar),".withresp",sep="."))
        tkconfigure(newnameEntry, textvariable=newnameVar)
    }
 ######## end define functions                          

##### define userform
initializeDialogDoE(title=gettextRcmdr("Import design from rda and csv ..."))   


## import file names for rda and csv
loadFrame <- ttklabelframe(topdes2, text=gettextRcmdr("rda file with design"))
putRcmdr("loadVar", tclVar(""))
loadEntry <- tkentry(loadFrame, width="50", textvariable=loadVar)
loadButton <- buttonRcmdr(loadFrame, text = gettextRcmdr("Select rda file"), 
        foreground = "darkgreen", width = "20", command = onChangerdaFile, 
        default = "normal", borderwidth = 3)
tkgrid(loadEntry, tklabel(loadFrame, text="   "), loadButton, sticky="w")


fileFrame <- ttklabelframe(topdes2, text=gettextRcmdr("csv file with response data"))
putRcmdr("fileVar", tclVar(""))
fileEntry <- tkentry(fileFrame, width="50", textvariable=fileVar)
fileButton <- buttonRcmdr(fileFrame, text = gettextRcmdr("Select csv file"), 
        foreground = "darkgreen", width = "20", command = onChangecsvFile, 
        default = "normal", borderwidth = 3)
      ## radio buttons for choosing import decimal separator
decimalradioFrame <- ttklabelframe(fileFrame, text=gettextRcmdr("Decimal Separator ?"))
decimalrbVariable <- tclVar("default")
defaultrb <- tkradiobutton(decimalradioFrame,text=gettextRcmdr("default"),variable=decimalrbVariable, value="default")
pointrb <- tkradiobutton(decimalradioFrame,text=gettextRcmdr("."),variable=decimalrbVariable, value=".")
commarb <- tkradiobutton(decimalradioFrame,text=gettextRcmdr(","),variable=decimalrbVariable, value=",")
tkgrid(defaultrb, sticky="w")  ## in this case, leave default option from options
tkgrid(pointrb, sticky="w")
tkgrid(commarb, sticky="w")
tkgrid(fileEntry, fileButton, sticky="w")
tkgrid.configure(fileButton, padx=5)
tkgrid(decimalradioFrame, sticky="w", padx=50, pady=10)


## old design name
designFrame <- tkframe(topdes2)
designsel <- ttkcombobox(designFrame, textvariable=nameVar, values=designs, state="readonly")
if (length(designs)==1) tcl(designsel, "current", 0)
.activeDataSet <- ActiveDataSet()
    tkbind(designsel, "<FocusOut>", namechange)

replacecbVariable <- tclVar("0")
replacecb <- ttkcheckbutton(designFrame,text=gettextRcmdr("Replace responses, \nif they exist already"),
      variable=replacecbVariable)

if (!is.null(.activeDataSet))
if (.activeDataSet %in% designs) tcl(designsel, "current", which(designs==.activeDataSet)-1)
tkgrid(designsel, replacecb, sticky="w")

newnamelabel <- tklabel(topdes2, text="Name for new design")
putRcmdr("newnameVar", tclVar(paste(tclvalue(nameVar),"withresp",sep=".")))
newnameEntry <- tkentry(topdes2, width="50", textvariable=newnameVar)


## always grid details, as otherwise default file name does not work
## design name info and help button have already been gridded above
tkgrid(loadFrame, sticky="w", columnspan=3, pady=20)
tkgrid(tklabel(topdes2, text=gettextRcmdr("Select design")), sticky="w", columnspan=3)
tkgrid(designFrame, sticky="w", columnspan=3)
tkgrid.configure(replacecb, padx=15)
tkgrid(fileFrame, sticky="w", columnspan=3, pady=20)
tkgrid(newnamelabel, sticky="w")
tkgrid(newnameEntry, sticky="w")

OKCancelHelp(window=topdes2, helpSubject="Menu.importrdacsv")
tkconfigure(OKbutton, takefocus=0)
tkconfigure(cancelButton, takefocus=0)
tkconfigure(helpButton, takefocus=0)

tkgrid(buttonsFrame, sticky="s", columnspan=3)

dialogSuffix(window=topdes2, rows=5, columns=3, focus=newnameEntry, bindReturn=FALSE)

}
###
# End of Menu.addresponse
###
