#This R script does the following:
#Merges the training and the test sets to create one data set, renames column names with descrptive values,
#Extracts only the measurements based on the mean and standard deviation measurements,
#Uses descriptive activity names to re name the activities in the data set
#creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Use dplyr library
library(dplyr)
#Set working directory to data folder

##(1-I) Read training & test data into data1, data2 respectively.
data1 = read.table("train/X_train.txt")
data2 = read.table("test/X_test.txt")

#Read activity data inrelation to training data
train_label = read.table("train/y_train.txt")

#Read activity data inrelation to test data
test_label = read.table("test/y_test.txt")

#Read activity number Vs Label
act_label = read.table("activity_labels.txt")

#Read Subject_Training  data 
data3 = read.table("train//subject_train.txt")
subject_train<-tbl_df(data3)

#Read Subject_Test data  
data4 = read.table("test//subject_test.txt")
subject_test<-tbl_df(data4)

##(1-II)Read 561 feature Labels 
data5 = read.table("features.txt")
features_label<-tbl_df(data5)

##(1-III) Add activity column & Data set type as 2 more columns for both Training & Test Data 
data1new<-cbind(data1,activity=train_label$V1,datatype="training",subject=subject_train$V1)
data2new<-cbind(data2,activity=test_label$V1,datatype="test",subject=subject_test$V1)

##(1-IV)Change training & test Data to tbl_df format for further processing
data_train<- tbl_df(data1new)
data_test <- tbl_df(data2new)

## (2) Merge training & test data in one data frame 'merged'

merged<-rbind(data_train,data_test)
#merged2<-merge(data_train,data_test,all=TRUE) takes longer execution time & order is distored rbind better

## (3-I)Label the data set with appropriate descriptive variable names
colnames(merged)<-features_label$V2
colnames(merged)[562]<-"activity"
colnames(merged)[563]<-"datatype"
colnames(merged)[564]<-"subject"

##(3-II)Remove duplicate string "BodyBody"from colnames to make it more tidy
colnames(merged) <- gsub("BodyBody", "Body", colnames(merged), fixed = TRUE)

##(4) Extract only the measurements on the mean and standard deviation for each measurement
meanstd_data<-select(merged,contains("[Mm]ean|[Ss]td"))

##(5)Select data with mean & standard deviation data along with activity & data type columns for further processing
meanstd_data1<-select(merged,contains("[Mm]ean|[Ss]td"),activity,datatype,subject)

##(6) Uses descriptive activity names to name the activities in the data set
meanstd_data1$activity<-gsub(pattern=1,replacement="WALKING",meanstd_data1$activity) %>% gsub(pattern=2,replacement="WALKING_UPSTAIRS")%>% gsub(pattern=3,replacement="WALKING_DOWNSTAIRS")%>% gsub(pattern=4,replacement="SITTING")%>% gsub(pattern=5,replacement="STANDING")%>% gsub(pattern=6,replacement="LAYING")

##(7-I)Summarize Data 
meanstd_data_summary<-select(meanstd_data1,-datatype) %>% group_by(activity,subject)%>% summarise_each(funs(mean))

##(7-II)Add 'AVG_' prefix to columns to indicate mean(average) operation 
colnames(meanstd_data_summary) <- paste("AVG", colnames(meanstd_data_summary), sep = "_")
colnames(meanstd_data_summary)[1]<-"Activity"
colnames(meanstd_data_summary)[2]<-"Subject"

##(7-III)Write output data in text file 'tidydataset.txt'
write.table(meanstd_data_summary,file='tidydataset.txt',row.name=FALSE )
