if (!require("reshape2")) {
        install.packages("reshape2")
}

if (!file.exists("data")){
        dir.create("data")
}

require(reshape2)

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile='./data/files.zip')
unzip('./data/files.zip', exdir = './data')

activities  <-  read.table('./data/UCI HAR Dataset/activity_labels.txt')
features  <-  read.table('./data/UCI HAR Dataset/features.txt')

train_x  <-  read.table('./data/UCI HAR Dataset/train/x_train.txt')
train_y  <-  read.table('./data/UCI HAR Dataset/train/y_train.txt')
train_s  <-  read.table('./data/UCI HAR Dataset/train/subject_train.txt')

test_x   <-  read.table('./data/UCI HAR Dataset/test/x_test.txt')
test_y   <-  read.table('./data/UCI HAR Dataset/test/y_test.txt')
test_s   <-  read.table('./data/UCI HAR Dataset/test/subject_test.txt')

x  <-  rbind(train_x,test_x)
y  <-  rbind(train_y,test_y)
s  <-  rbind(train_s,test_s)

remove(train_x,train_y,train_s,test_x,test_y,test_s)

col  <- grep("mean\\(\\)|std\\(\\)",features[,2])
data <- x[,col]

data  <- cbind(y,data)
data  <- cbind(s,data)
data[,2]  <- activities[data[,2],2]

names(data)  <- c("subject","activity",as.character(features[col,2]))

data_melted  <- melt(data, id = c("subject", "activity"), measure.vars = as.character(features[col,2]))

data_tidy  <-  dcast(data_melted, subject + activity ~ variable, mean)

write.table(data_tidy, file="./data_tidy.txt")
