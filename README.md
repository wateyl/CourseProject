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
form a new dataset containing only these columns, dataset is called measures
add subject and y column

changes value in y according to accitivity_label

changes column names to corresponding name of features

calculate mean for all measures by group of subject and y

output tidy dataset, dataset is called tidy

cookbook:

1	1	tBodyAcc-mean()-X
2	2	tBodyAcc-mean()-Y
3	3	tBodyAcc-mean()-Z
4	41	tGravityAcc-mean()-X
5	42	tGravityAcc-mean()-Y
6	43	tGravityAcc-mean()-Z
7	81	tBodyAccJerk-mean()-X
8	82	tBodyAccJerk-mean()-Y
9	83	tBodyAccJerk-mean()-Z
10	121	tBodyGyro-mean()-X
11	122	tBodyGyro-mean()-Y
12	123	tBodyGyro-mean()-Z
13	161	tBodyGyroJerk-mean()-X
14	162	tBodyGyroJerk-mean()-Y
15	163	tBodyGyroJerk-mean()-Z
16	201	tBodyAccMag-mean()
17	214	tGravityAccMag-mean()
18	227	tBodyAccJerkMag-mean()
19	240	tBodyGyroMag-mean()
20	253	tBodyGyroJerkMag-mean()
21	266	fBodyAcc-mean()-X
22	267	fBodyAcc-mean()-Y
23	268	fBodyAcc-mean()-Z
24	294	fBodyAcc-meanFreq()-X
25	295	fBodyAcc-meanFreq()-Y
26	296	fBodyAcc-meanFreq()-Z
27	345	fBodyAccJerk-mean()-X
28	346	fBodyAccJerk-mean()-Y
29	347	fBodyAccJerk-mean()-Z
30	373	fBodyAccJerk-meanFreq()-X
31	374	fBodyAccJerk-meanFreq()-Y
32	375	fBodyAccJerk-meanFreq()-Z
33	424	fBodyGyro-mean()-X
34	425	fBodyGyro-mean()-Y
35	426	fBodyGyro-mean()-Z
36	452	fBodyGyro-meanFreq()-X
37	453	fBodyGyro-meanFreq()-Y
38	454	fBodyGyro-meanFreq()-Z
39	503	fBodyAccMag-mean()
40	513	fBodyAccMag-meanFreq()
41	516	fBodyBodyAccJerkMag-mean()
42	526	fBodyBodyAccJerkMag-meanFreq()
43	529	fBodyBodyGyroMag-mean()
44	539	fBodyBodyGyroMag-meanFreq()
45	542	fBodyBodyGyroJerkMag-mean()
46	552	fBodyBodyGyroJerkMag-meanFreq()
47	4	tBodyAcc-std()-X
48	5	tBodyAcc-std()-Y
49	6	tBodyAcc-std()-Z
50	44	tGravityAcc-std()-X
51	45	tGravityAcc-std()-Y
52	46	tGravityAcc-std()-Z
53	84	tBodyAccJerk-std()-X
54	85	tBodyAccJerk-std()-Y
55	86	tBodyAccJerk-std()-Z
56	124	tBodyGyro-std()-X
57	125	tBodyGyro-std()-Y
58	126	tBodyGyro-std()-Z
59	164	tBodyGyroJerk-std()-X
60	165	tBodyGyroJerk-std()-Y
61	166	tBodyGyroJerk-std()-Z
62	202	tBodyAccMag-std()
63	215	tGravityAccMag-std()
64	228	tBodyAccJerkMag-std()
65	241	tBodyGyroMag-std()
66	254	tBodyGyroJerkMag-std()
67	269	fBodyAcc-std()-X
68	270	fBodyAcc-std()-Y
69	271	fBodyAcc-std()-Z
70	348	fBodyAccJerk-std()-X
71	349	fBodyAccJerk-std()-Y
72	350	fBodyAccJerk-std()-Z
73	427	fBodyGyro-std()-X
74	428	fBodyGyro-std()-Y
75	429	fBodyGyro-std()-Z
76	504	fBodyAccMag-std()
77	517	fBodyBodyAccJerkMag-std()
78	530	fBodyBodyGyroMag-std()
79	543	fBodyBodyGyroJerkMag-std()
80  subject: subject
81  y: activity label
