The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. The acceleration signal was then separated into body and gravity 
acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ). 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the 
magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag,
tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag,
fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

However as per the requirement of this project, only those features which extract the mean and standard deviation for each measurement are to be used.
Therefore, for the purpose of this analysis, you will find only those features having "mean()" and std()" in it. 
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions

1	tBodyAcc-mean()-X
2	tBodyAcc-mean()-Y
3	tBodyAcc-mean()-Z
4	tGravityAcc-mean()-X
5	tGravityAcc-mean()-Y
6	tGravityAcc-mean()-Z
7	tBodyAccJerk-mean()-X
8	tBodyAccJerk-mean()-Y
9	tBodyAccJerk-mean()-Z
10	tBodyGyro-mean()-X
11	tBodyGyro-mean()-Y
12	tBodyGyro-mean()-Z
13	tBodyGyroJerk-mean()-X
14	tBodyGyroJerk-mean()-Y
15	tBodyGyroJerk-mean()-Z
16	tBodyAccMag-mean()
17	tGravityAccMag-mean()
18	tBodyAccJerkMag-mean()
19	tBodyGyroMag-mean()
20  tBodyGyroJerkMag-mean()
21	fBodyAcc-mean()-X
22	fBodyAcc-mean()-Y
23	fBodyAcc-mean()-Z
24	fBodyAccJerk-mean()-X
25	fBodyAccJerk-mean()-Y
26	fBodyAccJerk-mean()-Z
27	fBodyGyro-mean()-X
28	fBodyGyro-mean()-Y
29	fBodyGyro-mean()-Z
30	fBodyAccMag-mean()
31	fBodyBodyAccJerkMag-mean()
32	fBodyBodyGyroMag-mean()
33	fBodyBodyGyroJerkMag-mean()
34	tBodyAcc-std()-X
35	tBodyAcc-std()-Y
36	tBodyAcc-std()-Z
37	tGravityAcc-std()-X
38	tGravityAcc-std()-Y
39	tGravityAcc-std()-Z
40	tBodyAccJerk-std()-X
41	tBodyAccJerk-std()-Y
42	tBodyAccJerk-std()-Z
43	tBodyGyro-std()-X
44	tBodyGyro-std()-Y
45	tBodyGyro-std()-Z
46	tBodyGyroJerk-std()-X
47	tBodyGyroJerk-std()-Y
48	tBodyGyroJerk-std()-Z
49	tBodyAccMag-std()
50	tGravityAccMag-std()
51	tBodyAccJerkMag-std()
52	tBodyGyroMag-std()
53	tBodyGyroJerkMag-std()
54	fBodyAcc-std()-X
55	fBodyAcc-std()-Y
56	fBodyAcc-std()-Z
57	fBodyAccJerk-std()-X
58	fBodyAccJerk-std()-Y
59	fBodyAccJerk-std()-Z
60	fBodyGyro-std()-X
61	fBodyGyro-std()-Y
62	fBodyGyro-std()-Z
63	fBodyAccMag-std()
64	fBodyBodyAccJerkMag-std()
65	fBodyBodyGyroMag-std()
66	fBodyBodyGyroJerkMag-std()

