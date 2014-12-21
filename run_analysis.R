rm(list=ls(all=TRUE))  # remove all variable
library(dplyr)
library(plyr)

#WorkingDirectory <- 'c:/Coursera/R/DataCleaning/Week2'   # set WD

setwd('c:/Coursera/R/DataCleaning/Week 2/')


## READ files

feature = read.table("./UCI HAR Dataset/features.txt")


trainid = read.table("./UCI HAR Dataset/train/subject_train.txt", col.name="Subject")
trainx = read.table("./UCI HAR Dataset/train/X_train.txt", col.names=feature$V2)
trainy = read.table("./UCI HAR Dataset/train/y_train.txt", col.name="Code")



label =  read.table("./UCI HAR Dataset/activity_labels.txt",col.name=c("Code","Activity"))


testid = read.table("./UCI HAR Dataset/test/subject_test.txt", col.name="Subject")
testx = read.table("./UCI HAR Dataset/test/X_test.txt", col.names=feature$V2)
testy =  read.table("./UCI HAR Dataset/test/y_test.txt",col.names="Code")



testmergex <- cbind(testid, testx)
testmergey <- merge(testy, label, by="Code")


trainmergex <- cbind(trainid, trainx)
trainmergey <- merge(trainy, label, by="Code")

FullTestDataSet<-cbind(testmergex,testmergey)
FullTrainDataSet<-cbind(trainmergex,trainmergey)




FullDataSet <- rbind(FullTrainDataSet,FullTestDataSet)


cols<-grep("mean",names(FullDataSet))
#cols<-append(cols,grep("Mean",names(FullDataSet)))
cols<-append(cols,grep("std",names(FullDataSet)))
cols<-append(cols,grep("Subject",names(FullDataSet)))
cols<-append(cols,grep("Activity",names(FullDataSet)))


selected<-select(FullDataSet,cols)

averages_data <-ddply(selected, c("Subject","Activity"), numcolwise(mean))

write.table(averages_data, "averages_data.txt", row.name=TRUE)

