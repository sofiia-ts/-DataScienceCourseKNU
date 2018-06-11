

#Написати функцію pmean, яка обчислює середнє значення (mean) забруднення сульфатами або нітратами серед заданого переліка моніторів. 

pmean<-function(directory,pollutant,id=1:332){
  d<-directory
  setwd(paste0("d:/R/",d))
  i<-1
  res<-data.frame()
  while (i<=length(id)){
    if (id[i]<=9) file<-read.csv(paste0("00",id[i],".csv"))
    else if (id[i]<=99) file<-read.csv(paste0("0",id[i],".csv"))
    else file<-read.csv(paste0(id[i],".csv"))
    i<-i+1
    res<-rbind(res,file)
  }
  mean(res[(names(res)==pollutant)][,1],na.rm = T)
}
  


#Написати функцію complete, яка виводить кількість повних спостережень (the number of completely observed cases) для кожного файлу.

completely<-function(directory,id=1:332){
  d<-directory
  setwd(paste0("d:/R/",d))
  i<-1
  res<-data.frame(id_col=NA,value=NA)
  while (i<=length(id)){
    if (id[i]<=9) file<-read.csv(paste0("00",id[i],".csv"))
    else if (id[i]<=99) file<-read.csv(paste0("0",id[i],".csv"))
    else file<-read.csv(paste0(id[i],".csv"))
    res[nrow(res)+1,]<-c(id[i],nrow(file[complete.cases(file),]))
    i<-i+1
  }
  res[complete.cases(res),]
}


