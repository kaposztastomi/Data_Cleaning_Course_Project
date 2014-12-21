
#CodeBook

CodeBook describes contents below:


run_analysis.R script sets the working directory, reads and merges datasets:

X_train.txt
y_train.txt
X_test.txt
y_test.txt
features.txt
activity_lables.txt

Train and test sets are merged separately and after merged together to FullDataSet.

Select command choose the required columns.

Average_data is the dataframe of tidy data required in step 5. 


#Transformations

cbind -> combines data frames, adding columns
rbind -> combines data frames, adding rows
merges -> meging data frames, join-like manipulation step
select -> select columns with "mean" or "std" in the name

ddply -> apply mean function for every column

