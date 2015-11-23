library(data.table)



# read train and test dataset and merge them together
train_x = fread("x_train.txt",header=F,stringsAsFactors=F,sep=" ")
train_subject = fread("subject_train.txt",header=F,stringsAsFactors=F,sep=" ")
train_y = fread("y_train.txt",header=F,stringsAsFactors=F,sep=" ")
colnames(train_subject)[1] <- "subject"
colnames(train_y)[1] <- "y"

test_x = fread("x_test.txt",header=F,stringsAsFactors=F,sep=" ")
test_subject = fread("subject_test.txt",header=F,stringsAsFactors=F,sep=" ")
test_y = fread("y_test.txt",header=F,stringsAsFactors=F,sep=" ")
colnames(test_subject)[1] <- "subject"
colnames(test_y)[1] <- "y"

all.train <- cbind(train_x,train_subject,train_y)
all.test <- cbind(test_x,test_subject,test_y)
all <- rbind(all.train,all.test)


# read column name file and identify the columns are mean and std
column.name <- fread("features.txt", header=F, stringsAsFactors=F, sep=" ")
columns.mean <- column.name[grepl("-mean()",column.name$V2,ignore.case=T),]
columns.std <- column.name[grepl("-std()",column.name$V2,ignore.case=T),]
columns <- rbind(columns.mean,columns.std)

# Extracts only the measurements on the mean and standard deviation for each measurement. 

measures <- all[c(columns$V1,562,563)]

#Uses descriptive activity names to name the activities in the data sett

measures$y[measures$y==1] <- "walking"
measures$y[measures$y==2] <- "walking_upstaire"
measures$y[measures$y==3] <- "walking_downstaire"
measures$y[measures$y==4] <- "sitting"
measures$y[measures$y==5] <- "standing"
measures$y[measures$y==6] <- "laying"


#Appropriately labels the data set with descriptive variable names. 

colnames(measures) <- c(columns$V2,"subject","y")

# From the data set in step 4, creates a second, independent tidy data 
# set with the average of each variable for each activity and each subject.


tidy <- aggregate(data.matrix(measures[,1:79])~subject+y, measures,mean)

write.table(tidy,file="tidy.txt",row.name=FALSE)

