# getdata-015-project

This repo contains:
1) a tidy data set as described below,
2) a link to a Github repository with your script for performing the analysis, and
3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.
4) this README.md explaining how all of the scripts work and how they are connected.

Original input data was taken from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A description of this original data can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The run_analysis.R script does the following:
1- Merges the training and the test sets to create one data set.
2- Extracts only the measurements on the mean and standard deviation for each measurement.
3- Uses descriptive activity names to name the activities in the data set
4- Appropriately labels the data set with descriptive variable names.
5- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The means.txt data set is the result of step 5 above.
