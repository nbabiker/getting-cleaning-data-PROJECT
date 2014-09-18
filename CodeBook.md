
##Disclaimers Note##

Some Information outlined in this file has been extracted from the features_info.txt

=============================================================================
##Code Book Overview##
***
This file details related to the tidy data set attached to this analysis .The data set describes analysis of data collected from both the training & test experiments in relation to mean, standard deviation related measurements (86 variables).

Additionally, three identifying columns were added to make the data more comprehensible and easier to analyze further. The added columns are "activity" , "datatype" & "subject". Further explanation of these variables can found in the following sections.

The final analysis of this data was carried by grouping data collected by the "activity" & "subject" variables and collecting the average mean per each selected measurement.


##Feature Selection ~ Mean and Standard Deviation related measurements##  
***
The variables selected for this dataset comes from mean and standard deviation related measurements of 'Base Data' extracted from the "Human Activity Recognition Using Smartphones Dataset Version 1.0" *

The 'Base Data' is collected from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 

Data from the training experiments have been collected from "X_train.txt" file and names of the features used were collected from the"Y_train.txt" both found under the train directory.

Data from the test experiments have been collected from "X_test.txt" file and names of the features used were collected from the "Y_test.txt" file both found under the test directory.

##RAW(BASE) Data Capturing##
***
The capturing of the base data of this dataset as follows: 

Time domain signals (prefixed with't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' prefix in the data to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- 	tBodyAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- 	fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- 	fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag


From these signals mean, standard deviation and mean frequency 86 related measurements variables have been extracted from the original data type, the following suffixes/Prefixes are indicated as:

- mean(): Mean value
- std(): Standard deviation
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
- angle(): Angle between two vectors 

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean	tBodyAccMean	tBodyAccJerkMean	tBodyGyroMean tBodyGyroJerkMean

Additionally three additional identifying variables have added 

- activity 
- datatype
- subject

**‘activity’:** This variable (character string) has been created by merging activity identifiers with the related training & test data records based on data extracted from,"y_train.txt" &"y_test.txt".After which the identifiers are replaced with descriptive names (one of the values :"WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")  based on the key extracted from the "activity_labels.txt".

**‘datatype’:** This variable is a character string which has either value "test" or "training" depending on the whether the data record is extracted from the training or test experiement.I.e Whether data was extracted from "x_train.txt" or "x_test.txt"

**‘subject’:** This variable represents the id of the subject that carried out the related activity per that specific window. Extracted and mapped into the data set from "subject_test.txt" &"subject_train.txt"

The complete list of the 'base' variables from which the variables of the data set has been extracted is available in 'features.txt'. The variables in the final tidy data set are:

 [1] "tBodyAcc-mean()-X"                
 [2] "tBodyAcc-mean()-Y"                   
 [3] "tBodyAcc-mean()-Z"                   
 [4] "tBodyAcc-std()-X"                    
 [5] "tBodyAcc-std()-Y"                    
 [6] "tBodyAcc-std()-Z"                    
 [7] "tGravityAcc-mean()-X"                
 [8] "tGravityAcc-mean()-Y"                
 [9] "tGravityAcc-mean()-Z"                
[10] "tGravityAcc-std()-X"                 
[11] "tGravityAcc-std()-Y"                 
[12] "tGravityAcc-std()-Z"                 
[13] "tBodyAccJerk-mean()-X"               
[14] "tBodyAccJerk-mean()-Y"               
[15] "tBodyAccJerk-mean()-Z"               
[16] "tBodyAccJerk-std()-X"                
[17] "tBodyAccJerk-std()-Y"                
[18] "tBodyAccJerk-std()-Z"                
[19] "tBodyGyro-mean()-X"                  
[20] "tBodyGyro-mean()-Y"                  
[21] "tBodyGyro-mean()-Z"                  
[22] "tBodyGyro-std()-X"                   
[23] "tBodyGyro-std()-Y"                   
[24] "tBodyGyro-std()-Z"                   
[25] "tBodyGyroJerk-mean()-X"              
[26] "tBodyGyroJerk-mean()-Y"              
[27] "tBodyGyroJerk-mean()-Z"              
[28] "tBodyGyroJerk-std()-X"               
[29] "tBodyGyroJerk-std()-Y"               
[30] "tBodyGyroJerk-std()-Z"   
[31] "tBodyAccMag-mean()"                  
[32] "tBodyAccMag-std()"                   
[33] "tGravityAccMag-mean()"               
[34] "tGravityAccMag-std()"                
[35] "tBodyAccJerkMag-mean()"              
[36] "tBodyAccJerkMag-std()"               
[37] "tBodyGyroMag-mean()"                 
[38] "tBodyGyroMag-std()"                  
[39] "tBodyGyroJerkMag-mean()"             
[40] "tBodyGyroJerkMag-std()"              
[41] "fBodyAcc-mean()-X"                   
[42] "fBodyAcc-mean()-Y" 
[43] "fBodyAcc-mean()-Z"                   
[44] "fBodyAcc-std()-X"                    
[45] "fBodyAcc-std()-Y"                    
[46] "fBodyAcc-std()-Z"                    
	[47] "fBodyAcc-meanFreq()-X"                               
[48] "fBodyAcc-meanFreq()-Y"               
[49] "fBodyAcc-meanFreq()-Z"               
[50] "fBodyAccJerk-mean()-X"               
[51] "fBodyAccJerk-mean()-Y"               
[52] "fBodyAccJerk-mean()-Z"               
[53] "fBodyAccJerk-std()-X"                
[54] "fBodyAccJerk-std()-Y"                
[55] "fBodyAccJerk-std()-Z"                
[56] "fBodyAccJerk-meanFreq()-X"           
[57] "fBodyAccJerk-meanFreq()-Y"           
[58] "fBodyAccJerk-meanFreq()-Z"           
[59] "fBodyGyro-mean()-X"                  
[60] "fBodyGyro-mean()-Y"
[61] "fBodyGyro-mean()-Z"                  
[62] "fBodyGyro-std()-X"                   
[63] "fBodyGyro-std()-Y"                   
[64] "fBodyGyro-std()-Z"                   
[65] "fBodyGyro-meanFreq()-X"              
[66] "fBodyGyro-meanFreq()-Y"              
[67] "fBodyGyro-meanFreq()-Z"              
[68] "fBodyAccMag-mean()"                  
[69] "fBodyAccMag-std()"                   
[70] "fBodyAccMag-meanFreq()"              
[71] "fBodyAccJerkMag-mean()"              
[72] "fBodyAccJerkMag-std()"               
[73] "fBodyAccJerkMag-meanFreq()"          
[74] "fBodyGyroMag-mean()"                 
[75] "fBodyGyroMag-std()"                  
[76] "fBodyGyroMag-meanFreq()"             
[77] "fBodyGyroJerkMag-mean()"             
[78] "fBodyGyroJerkMag-std()"              
[79] "fBodyGyroJerkMag-meanFreq()"         
[80] "angle(tBodyAccMean,gravity)"         
[81] "angle(tBodyAccJerkMean),gravityMean)"
[82] "angle(tBodyGyroMean,gravityMean)"    
[83] "angle(tBodyGyroJerkMean,gravityMean)"
[84] "angle(X,gravityMean)"                
[85] "angle(Y,gravityMean)"                
[86] "angle(Z,gravityMean)"                
[87] "activity"                            
[88] "datatype"                            
[89] "subject"                  

##Analysis carried Out ~Mean of measurements grouped by activity & subject##
***

In order to reach to the final analysis of this data, after the three data identifying variables have been added to both the test data set & training data set. Both data sets have been joined into one data sets , column names have renamed based on the "features_info.txt" file , data variables that only contain 'mean' 'std' measurements have been selected .

Then, descriptive activity names have been applied to data, duplicate names have been fixed, resulting data have been grouped by the "activity" & "subject" variables. Finally, average mean per each selected measurement has been collected to reach to the tidy data which has the following characteristics: 

1) Each variable forms a column
2) Each observation forms a row
3) Each type of observational unit forms a table

##Processed Data## 
***
***‘data1’:*** ***Training data set of type data frame read from "train/X_train.txt"

***‘data2’:*** Test data set of type data frame read from "test/X_test.txt"

***‘train_label’:*** Ordered data of activities performed to generate training data of type data frame read from “train/y_train.txt"(Has values: 1-6)

***‘test_label’:*** Ordered data of activities performed to generate test data of type data frame read from “test/y_test.txt"(Has values: 1-6)

***‘act_label’*** = Key of activity description versus its identifying number of type data frame read from "activity_labels.txt".

***‘data3’:*** Ordered data of subjects involved in generating the training data of type data frame read from "train//subject_train.txt".(Values 1-30)

***‘subject_train’:*** ‘data3’ data frame in tbl_df format

***‘data4’:*** Ordered data of subjects involved in generating the test data of type data frame read from "test//subject_test.txt"(Values 1-30)

***‘subject_test’:*** ‘data4’ data frame in tbl_df format

***‘data5’:*** Ordered data representing the labels of 561 features of type data frame read from “features.txt".

***features_label: ***‘data5’ data frame in tbl_df format tbl_df.

***‘data1new’:*** represents ‘data1’data set with three additional columns (activity’, ‘datatype’, ‘subject’) binded to it of type data frame. 

***‘data2new’:*** represents ‘data2’ data set with three additional columns (‘activity’, ‘datatype’, ‘subject’) binded to it of type data frame. 

***‘data_train’:*** ‘data1new’ data frame in tbl_df format

***‘data_test’:*** ‘data2new’ data frame in tbl_df format

***‘merged’:*** represents merged data of ‘data_train’& ‘data_test’.

##Outputs##
***
***‘meanstd_data’:*** Holds the complete tidy data subsetted for only measurements related to mean & standard deviation variables (properly named) .Does not include columns: “activity”, “datatype”, ”subject”.

***‘meanstd_data1’:*** Holds the complete tidy data subsetted for measurements related to mean & standard deviation variables (properly named) in addition to the three identifying columns “activity”, “datatype”, ”subject”.

***‘meanstd_data_summary’:*** Holds average summary values for the ‘meanstd_data1’ data set filtered variables grouped by activity & subject pair.
***‘tidydataset.txt’:*** ***Text file contains ‘meanstd_data_summary’ data set.

##References:##
***
- Human Activity Recognition Using Smartphones Dataset
Version 1.0 Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

- READ ME file , Human Activity Recognition Using Smartphones Dataset
Version 1.0,Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
