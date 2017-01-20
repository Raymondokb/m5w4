<<<<<<< HEAD
library(gridBase); library(grid); library(ggplot2)

tt = read.csv( "D:\\Users\\msboon\\Desktop\\repdata%2Fdata%2FStormData.csv.bz2")

#tt = read.table("D:\\Users\\msboon\\Desktop\\For Data science coursera\\Reproducible Research\\m5w4.csv", sep = "|")



fatalitytable = tapply(tt$FATALITIES,tt$EVTYPE,sum)
#plot(fatalitytable, xlab=rownames(fatalitytable))
#hist(sort(fatalitytable,decreasing=TRUE),labels=TRUE)
barplot(head(sort(fatalitytable, decreasing=TRUE)),col="lightblue",
        main = "Top six severe weathers by fatalities",
        ylab = "No. of fatalities", xlab = "Severe Weather",
        ylim=c(0,6000))


#solve this later. Purely for aesthetic reasons
#okay its solved

#Now onto conversion of K M B to numerics. posibly need 
#to write a custom function

dd = names(table(tt$CROPDMGEXP))
unique(dd)
to_num = function(input_h){
     if(input_h=="B"){
          return(1e9)
     }else if(input_h=="m"|input_h=="M"){
          return(1e6)
     }else if(input_h=="k"|input_h=="K"){
          return(1e3)
     }else{
          return(1)
     }
}
#tapply(tt$CROPDMGEXP,)

#rather, just extract the BILLION ones
crop_b_index = which(tt$CROPDMGEXP=="B")
crop = tt[crop_b_index,]
croptable = tapply(crop$CROPDMG,as.character(crop$EVTYPE), sum)

barplot(head(sort(croptable, decreasing=TRUE)),col="lightblue",
        main = "Top six severe weathers by crop damage (Billions)",
        ylab = "Crop Damage Amount (Billions)", xlab = "Severe Weather",
        ylim=c(0,5.5))


=======
library(gridBase); library(grid); library(ggplot2)

tt = read.csv( "D:\\Users\\msboon\\Desktop\\repdata%2Fdata%2FStormData.csv.bz2")

#tt = read.table("D:\\Users\\msboon\\Desktop\\For Data science coursera\\Reproducible Research\\m5w4.csv", sep = "|")



fatalitytable = tapply(tt$FATALITIES,tt$EVTYPE,sum)
#plot(fatalitytable, xlab=rownames(fatalitytable))
#hist(sort(fatalitytable,decreasing=TRUE),labels=TRUE)
barplot(head(sort(fatalitytable, decreasing=TRUE)),col="lightblue",
        main = "Top six severe weathers by fatalities",
        ylab = "No. of fatalities", xlab = "Severe Weather",
        ylim=c(0,6000))


#solve this later. Purely for aesthetic reasons
#okay its solved

#Now onto conversion of K M B to numerics. posibly need 
#to write a custom function

dd = names(table(tt$CROPDMGEXP))
unique(dd)
to_num = function(input_h){
     if(input_h=="B"){
          return(1e9)
     }else if(input_h=="m"|input_h=="M"){
          return(1e6)
     }else if(input_h=="k"|input_h=="K"){
          return(1e3)
     }else{
          return(1)
     }
}
#tapply(tt$CROPDMGEXP,)

#rather, just extract the BILLION ones
crop_b_index = which(tt$CROPDMGEXP=="B")
crop = tt[crop_b_index,]
croptable = tapply(crop$CROPDMG,as.character(crop$EVTYPE), sum)

barplot(head(sort(croptable, decreasing=TRUE)),col="lightblue",
        main = "Top six severe weathers by crop damage (Billions)",
        ylab = "Crop Damage Amount (Billions)", xlab = "Severe Weather",
        ylim=c(0,5.5))


>>>>>>> 6ab56eabc718683c7ee01376053575d68cf621ca
