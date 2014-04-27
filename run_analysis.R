#**********Identifying mean() and std() features********************************

#Using grep function to identify required features
feat=read.table("features.txt")
means=feat[grep("mean()",feat[,2],fixed=TRUE),]
std=feat[grep("std()",feat[,2],fixed=TRUE),]

#Naming column names identically to use rbind
colnames(means)=c("Feature_number","Feature_name") 
colnames(std)=c("Feature_number","Feature_name")

#Appending mean() and std() features
means_std=rbind(means,std) 

#********Creating dataset for test subjects*************************************

#Reading relevant datasets for test subjects
X_test=read.table("X_test.txt")  
Y_test=read.table("y_test.txt")
sub_test=read.table("subject_test.txt")

#Using the required features to subset and name the X_test dataframe
X_test_req_feat=X_test[,(means_std$Feature_number)]
colnames(X_test_req_feat)=means_std$Feature_name 

#Adding and naming the column for Activity Id of the test subjects
X_test_req_feat_labels=cbind(Y_test,X_test_req_feat)
colnames(X_test_req_feat_labels)[1]="Activity_Id"

#Adding and naming the column for Subject number of the test subjects
X_test_v1=cbind(sub_test,X_test_req_feat_labels)
colnames(X_test_v1)[1]="Subject_number"

#Merging the activity labels dataframe to give the descriptive activities of test subjects
activity_labels=read.table("activity_labels.txt") 
colnames(activity_labels)=c("Activity_Id","Activity_label")
X_test_v2=merge(X_test_v1,activity_labels,by="Activity_Id",all.x=TRUE)
X_test_v3=X_test_v2[,c(2,1,69,3:68)] #Reordering columns

#********Creating dataset for train subjects************************************

#Reading relevant datasets for train subjects
X_train=read.table("X_train.txt")
Y_train=read.table("y_train.txt")
sub_train=read.table("subject_train.txt")

#Using the required features to subset and name the X_train dataframe
X_train_req_feat=X_train[,(means_std$Feature_number)]
colnames(X_train_req_feat)=means_std$Feature_name

#Adding and naming the column for Activity Id of the train subjects
X_train_req_feat_labels=cbind(Y_train,X_train_req_feat)
colnames(X_train_req_feat_labels)[1]="Activity_Id"

#Adding and naming the column for Subject number of the train subjects
X_train_v1=cbind(sub_train,X_train_req_feat_labels)
colnames(X_train_v1)[1]="Subject_number"

#Merging the activity labels dataframe to give the descriptive activities of train subjects
X_train_v2=merge(X_train_v1,activity_labels,by="Activity_Id",all.x=TRUE)
X_train_v3=X_train_v2[,c(2,1,69,3:68)] #Reordering columns

#********Appending (test & train dataframes************************************
train_test=rbind(X_train_v3,X_test_v3)


#********Creating a second tidy dataset with the average of each variable for each activity and each subject. ************************************
train_test_roll_up=train_test[with(train_test,order(Subject_number,Activity_Id)),]
library(reshape2) 
molten=melt(train_test_roll_up,id=c("Subject_number","Activity_Id","Activity_label"),measure.vars=colnames(train_test_roll_up[,c(4:69)]))
Avg_tidy_dataset=dcast(molten,Subject_number+Activity_Id~variable,mean)

