##README FILE##

This README file explains the process with which the analysis script works, and the details of the steps involved to generate the tidy text file. The main objective of this analysis is to format the data of specific criteria into a form facilitates exploration and analysis and provide summary of data as required.

###Components Involved In the Analysis###
=========================================

The components involved in this data analysis are as follows:

***(I)CodeBook.md:*** Contains details of all variables involved in this analysis from raw data, processed and output data and details of where they came from.

***(II)’meanstd_data1’:*** Tidy data set prepared per the set requirements outlined in the assignment. This tidy data set has the following characteristics: 
	
1) Each variable forms a column
2) Each observation forms a row
3) Each type of observational unit forms a table

***(III)’meanstd_data_summary’:*** This data summarizes the dataset ‘meanstd_data1’ after grouping by activity & subject and applying the mean function for each activity/subject pair.

***(IV) ‘tidydataset.txt’:*** Text file containing tidy data set ‘meanstd_data_summary’

***(V)”run_analysis.R”:*** R script that upon execution will extract data from multiple related files, perform data transformations, select data based on a specific criteria,  re names variables, performs grouping of data and provides a summary analysis (mean) on data by making use the R library ‘dplyr’. Details provided in the following section. 

***(VI)Related files:***from which data has been extracted from the UCI HAR dataset folder:
 
- x_train.txt
- y_train.txt
- x_test.txt
- y_test.txt	
- features.txt
- subject_train.txt
- subject_test.txt
- activity_labels.txt

The ‘inertial signal’ folders in the UCI HAR dataset folder are **NOT** involved in this data analysis. 

The following diagram depicts the files used and how they relate to each other:
![](https://coursera-forum-screenshots.s3.amazonaws.com/ab/a2776024af11e4a69d5576f8bc8459/Slide2.png)
Figure 1.Files from  UCI HAR dataset folder involved in Analysis
Reference: https://class.coursera.org/getdata-007/forum/thread?thread_id=49

###Analysis Script~ ‘run_analysis.R’###
=======================================

Assumptions:
 
- 	This script assumes that the current working directory is set to the UCI HAR dataset folder 
- 	The analysis script is inside the UCI HAR dataset folder. 

Steps Involved:

The analysis script involves various steps:

***(1)Read required data from the related files.***

(i)Uses read.table to read in the data from ‘X_train.txt’, ‘X_test.txt’, ‘y_train.txt’,’y_test.txt’,’activity_labels.txt’,’subject_train.txt’ into respective data frames and are transformed to the tbl_df format where required for further processing.

(ii)The 561 feature Labels are read into a tbl_df data format to be used in renaming the columns (features) in the coming steps.

(iii)Add activity, datatype , subject columns to training and test data assuming that the data is ordered to match each observation respectively. These columns are added to assist in the analysis that will be carried on the data.

(iv)The result training and test data set are transformed into tbl_df format for further processing (‘data_train’ &’data_test’-Details in CodeBook)

***(2)Merge the transformed training and test data into one data set.***

The transformed training and test data (‘data_train’ &’data_test’) are merged into one data set ’merged’ by using the function ’rbind’. Kindly note that ‘merge’ function could have been used as well in this step but takes longer execution time & order is distorted. Here it is assumed that the order of the 561 features is the same in the training and test data sets.

***(3) Label the data set with appropriate descriptive variable names.***

(i)This is based on labels from the ‘features_label.txt’ file .Last three columns are the ‘activity’, ‘datatype’ & ‘subject’ columns.

(ii)Remove duplicate string "BodyBody"from column names to make it more tidy by making use of the function ‘gsub’ & update the column names of’meanstd_data1’ accordingly.

***(4) Extracts only data related to the mean & standard deviation measurements.***

Based on the assumption that these columns have the string “mean” or “std” in their labels , ‘select’ function is used to select labels with the regular expression"[Mm]ean|[Ss]td".(‘meanstd_data’)

***(5)Select data with mean & standard deviation data along with activity , subject ,& data type columns to help in further analysis.***

***(6) Rename activities in the data set using descriptive activity names.*** 

Uses descriptive activity names to name the activities in the data set based on the key data set to replace the activity number identifiers by using ‘gsub’. 

***(7)Groups data by ‘Activity’ & ‘Subject’ involved & calculates average of each variable for each activity/subject pair***

The ‘datatype’ variable is excluded since averaging this character string wont make a lot of since here)

(i) ‘group_by’& ‘summarise_each’ functions are used to do so and output data is named as ‘meanstd_data_summary’.

(ii) Add 'AVG_' prefix to output data ‘meanstd_data_summary’ columns to indicate mean(average) operation.

(iii) Write output summary data in‘tidydataset.txt’ text file using ‘write.table’ function. Note that this text file can be read into R by the ‘read.table’ function setting ‘header = TRUE’ & followed by the ‘View’ function for viewing the content.

