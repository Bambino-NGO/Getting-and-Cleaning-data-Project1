# Summary of the problem
#   Using the data provided from the accelerometers of Samsung Galaxy S 
#   smartphone, we intend to put forward a tidy data to a file named "tidy_data.txt"
#   by formatting, merging and cleaning the data files in training and test dataset


library(reshape2)
library(dplyr)

if(!file.exists("./data")){
        dir.create("./data")
}

dataPath <- "./data/UCI HAR Dataset"

if (!file.exists(dataPath)) {
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileUrl,destfile="./data/UCI HAR Dataset.zip")
        
        # Unzip UCI HAR Dataset to /data directory
        unzip(zipfile="./data/UCI HAR Dataset.zip",exdir="./data")
}

# Reading training data tables:
xTrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subjectTrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

# Reading test data tables:
xTest <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subjectTest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# Reading the feature vector:
features <- read.table('./data/UCI HAR Dataset/features.txt')

# Reading the activity labels:
activityLabels = read.table('./data/UCI HAR Dataset/activity_labels.txt')

# Assigning column names
colnames(xTrain) <- features[,2] 
colnames(yTrain) <-"activityId"
colnames(subjectTrain) <- "subjectId"

colnames(xTest) <- features[,2] 
colnames(yTest) <- "activityId"
colnames(subjectTest) <- "subjectId"

colnames(activityLabels) <- c('activityId','activityType')

# Combining all data in one dataset:
        
mrgTrain <- cbind(yTrain, subjectTrain, xTrain)
mrgTest <- cbind(yTest, subjectTest, xTest)
datasetMegred <- rbind(mrgTrain, mrgTest)


# Extract mean and standard deviation data exclusively

features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])
featuresWanted <- grep(".*mean.*|.*std.*", features[,2])
featuresWanted.names <- features[featuresWanted,2]
featuresWanted.names = gsub('-mean', 'Mean', featuresWanted.names)
featuresWanted.names = gsub('-std', 'Std', featuresWanted.names)
featuresWanted.names <- gsub('[-()]', '', featuresWanted.names)

columnNames <- colnames(datasetMegred)
colnames(datasetMegred) <- c("subject", "activity", featuresWanted.names)

meanAndStdev <- (grepl("activityId" , columnNames) | 
                         grepl("subjectId" , columnNames) | 
                         grepl("mean.." , columnNames) | 
                         grepl("std.." , columnNames) 
)

# factoring the activity values

datasetMegred$activity <- factor(datasetMegred$activity, levels = activityLabels[,1], labels = activityLabels[,2])
datasetMegred$subject <- as.factor(datasetMegred$subject)

datasetMegred.mean <- dcast(datasetMegred.melted, subject + activity ~ variable, mean)

# Making the tidy dataset
write.table(datasetMegred.mean, "tidy.txt", row.names = FALSE, quote = FALSE)