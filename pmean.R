
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
  
pmean("specdata", "sulfate", 1:10)
pmean("specdata", "sulfate", 55)
pmean("specdata", "nitrate", 2)


#Написати функцію complete, яка виводить кількість повних спостережень (the number of completely observed cases) для кожного файлу.

complete<-function(directory,id=1:332){
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

complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 50:60)


corr <- function(directory, threshold = 0) {
  d<-directory
  setwd(paste0(" d:/R/ ",d))
  i<-1
  cr <- c() 
  while (i<=332){
    if (i<=9) file<-read.csv(paste0("00",i,".csv"))
    else if (i<=99) file<-read.csv(paste0("0",i,".csv"))
    else file<-read.csv(paste0(i,".csv"))
    file <- file[complete.cases(file),]
    if ( nrow(file) > threshold ) {
      cr <- c(cr, cor(file$sulfate, file$nitrate) ) 
    }
  }
  
  cr 
}
corr("specdata",200)

