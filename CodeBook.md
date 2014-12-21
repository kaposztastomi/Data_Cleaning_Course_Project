
#CodeBook

CodeBook describes contents below:


run_analysis.R script sets the working directory, reads and merges datasets:

* X_train.txt -> train measurements
* y_train.txt -> train labels
* X_test.txt -> test measurements
* y_test.txt -> test labels
* features.txt -> features name
* activity_lables.txt -> activiti code and activity lable 

Train and test sets are merged separately and after merged together to FullDataSet.

Select command choose the required columns.

Average_data is the dataframe of tidy data required in step 5. 


#Transformations

* cbind -> combines data frames, adding columns
* rbind -> combines data frames, adding rows
* merges -> meging data frames, join-like manipulation step
* select -> select columns with "mean" or "std" in the name
* ddply -> apply mean function for every column

