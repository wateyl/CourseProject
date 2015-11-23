# CourseProject

This is the course of Coursera couse getting and cleaning data.

This is the instruction of the project

You should create one R script called run_analysis.R that does the following. 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

run_analaysis.R is included

put all training and testing data in the working folder 
the code reads all train and test data including x-, y-, subject-
combine these datasets so that x,y,subject merged in columns
combine train and test by appending test data after train data

read feature.txt, read in all columns names
find the ones with mean and std
form a new dataset containing only these columns, call measures
add subject and y column

changes value in y according to accitivity_label

changes column names to corresponding name of features

calculate mean for all measures by group of subject and y

output tidy dataset, call tidy


