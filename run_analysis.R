# This R script called run_analysis.R that does the following:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Installing a "reshape2" package if it is not found
if (!require("reshape2")) {
        install.packages("reshape2")
}
# Creating a "data" directory if it does not exist 
if (!file.exists("data")){
        dir.create("data")
}

# Loading the "reshape2" pachage for a latter use
require(reshape2)

# Downloaing the dataset to the "data" directory and unzipping it
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile='./data/files.zip')
unzip('./data/files.zip', exdir = './data')

# Reading activities and features data files
activities  <-  read.table('./data/UCI HAR Dataset/activity_labels.txt')
features  <-  read.table('./data/UCI HAR Dataset/features.txt')

# Reading training data including measurements, activity ids and subject ids
train_x  <-  read.table('./data/UCI HAR Dataset/train/x_train.txt')
train_y  <-  read.table('./data/UCI HAR Dataset/train/y_train.txt')
train_s  <-  read.table('./data/UCI HAR Dataset/train/subject_train.txt')

# Reading test data including measurements, activity ids and subject ids
test_x   <-  read.table('./data/UCI HAR Dataset/test/x_test.txt')
test_y   <-  read.table('./data/UCI HAR Dataset/test/y_test.txt')
test_s   <-  read.table('./data/UCI HAR Dataset/test/subject_test.txt')

# Merging training and test data sets together
x  <-  rbind(train_x,test_x)
y  <-  rbind(train_y,test_y)
s  <-  rbind(train_s,test_s)

# Removing unnecessary variables in the script
remove(train_x,train_y,train_s,test_x,test_y,test_s)

# Extracting the measurements on the mean and standard deviation 
col  <- grep("mean\\(\\)|std\\(\\)",features[,2])
data <- x[,col]

# Merging measurments, activity ids and subject ids data 
data  <- cbind(y,data)
data  <- cbind(s,data)

# Changing activity ids to describtive activty variables
data[,2]  <- activities[data[,2],2]

# Adding descriptive variable names to the dataset
names(data)  <- c("subject","activity",as.character(features[col,2]))

# Define ids and measure variables in the data set
data_melted  <- melt(data, id = c("subject", "activity"), measure.vars = as.character(features[col,2]))

# creating a second, independent tidy data set with the average of each variable for each activity and each subject
data_tidy  <-  dcast(data_melted, subject + activity ~ variable, mean)

# Exporting the tidy data set in to text file in the working directory
write.table(data_tidy, file="./data_tidy.txt", row.name = FALSE)
