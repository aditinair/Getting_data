Readme.md for Getting data course project
==========================================

_**NOTE:**_ For this analysis, the files in the 'Inertial Files' folder for both train and test data has for all practical purposes been assumed to be unnecessary. This is done on the basis of an assumption that these were the raw files used to aggregate and eventually obtain the 561 feature set values named as 'X_train' and 'X_test' which were used for this analysis.

The **run_analysis.R** script has been commented in detail to explain the steps performed in generating the following datasets:  

**1. train_test:** This appends the train and test datasets to consist of the 66 features that extract only mean and standard deviation measurements.  
**2. avg_tidy_dataset:** This aggregates the train_test dataset by obtaining the average values of the required features for a a particular subject and the activity he/she performed.  

The **codebook.md** file explains in detail what each of the 69 variables in the train_test dataset depict.

**At a high level, the following points summarize the run_analysis.R script:**

1. It will obtain the features that give the mean and standard deviation for each measurement by using the grep function
2. It will use these required features to subset the 'X_test' dataset.
3. Columns for the Activity_Id, subject_number and activity_labels are added in that order to sum up the total number of variables/columns to 69.
4. Points 2, 3 are repeated for the 'X_train' dataset.
5. The train and test datasets are appended to form train_test dataset
6. The 'train_test' dataset is rolled up to order subject_number and activity_Id and finally a second aggregated dataset 'avg_tidy_dataset'.


