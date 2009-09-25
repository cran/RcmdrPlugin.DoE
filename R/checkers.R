activeDataSetDesignlhs <- function (){
  aus <- FALSE
  if (activeDataSetDesignP()){
     di <- design.info(eval(parse(text=ActiveDataSet())))
     if (length(grep("lhs",di$type))>0)
        aus <- TRUE
     }
  aus
}


activeDataSetDesignLongToWide <- function (){
  aus <- FALSE
  if (activeDataSetDesignP()){
     di <- design.info(eval(parse(text=ActiveDataSet())))
     aus <- di$repeat.only
     if (length(grep("param",di$type))>0 & is.null(di$responselist))
        aus <- TRUE
     }
  aus
}

activeDataSetDesignWide <- function (){
  aus <- FALSE
  if (activeDataSetDesignPResp()){
     di <- design.info(eval(parse(text=ActiveDataSet())))
     aus <- !is.null(di$responselist)
     }
  aus
}

activeDataSetDesignP <- function (){
  aus <- FALSE
  if (activeDataSetP())
     aus <- "design" %in% class(eval(parse(text=ActiveDataSet())))
  aus
}

activeDataSetDesignPResp <- function (){
  aus <- FALSE
  if (activeDataSetDesignP())
     aus <- !is.null(response.names(eval(parse(text=ActiveDataSet()))))
  aus
}


activeDataSetDesign2P <- function (){
  aus <- FALSE
  if (activeDataSetDesignP())
     aus <- isDesign2pb(eval(parse(text=ActiveDataSet()))) | isDesign2FrF(eval(parse(text=ActiveDataSet())))
  aus
}

activeDataSetDesign2PResp <- function (){
  aus <- FALSE
  if (activeDataSetDesign2P())
     aus <- !is.null(response.names(eval(parse(text=ActiveDataSet()))))
  aus
}


exist2Designs <- function(){
   length(listDesigns()) > 1
}

existDesigns <- function(){
   length(listDesigns()) > 0
}

existDesign2 <- function(){
   length(listDesigns2()) > 0
}

existDesign2pb <- function(){
   length(listDesigns2(type=="pb")) > 0
}
existDesign2FrF <- function(){
   length(listDesigns2(type=="FrF2")) > 0
}

existDesignsWithResp <- function(){
    length(listDesignsWithResp()) > 0
}


isDesign2pb <- function(design){
        aus <- FALSE
        if (design.info(design)$type=="pb"){ 
           aus <- TRUE 
           return(aus)}
        if (design.info(design)$type=="oa"){ 
           nlevels <- design.info(design)$nlevels
           if (all(nlevels==2)) aus <- TRUE}
        aus
}
isDesign2FrF <- function(design){
        aus <- FALSE
        if (substr(design.info(design)$type,1,4) == "FrF2"){ 
           aus <- TRUE 
           return(aus)}
        if (design.info(design)$type == "full factorial"){ 
           nlevels <- design.info(design)$nlevels
           if (all(nlevels==2)) aus <- TRUE}
        aus
}