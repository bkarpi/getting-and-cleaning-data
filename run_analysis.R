### Part1 - Read the training and test datasets into dataframes  
trainData    <- read.table("./train/X_train.txt")
testData     <- read.table("./test/X_test.txt")
combData     <- rbind(trainData, testData)

trainLabels  <- read.table("./train/y_train.txt")
testLabels   <- read.table("./test/y_test.txt")
combLabels   <- rbind(trainLabels, testLabels)

trainSubject <- read.table("./train/subject_train.txt")
testSubject  <- read.table("./test/subject_test.txt")
combSubject  <- rbind(trainSubject, testSubject)


### Part2 Extracts only the measurements on the mean and standard deviation for each measurement
features <- read.table("./features.txt")
keepCols <- grep("mean\\(\\)|std\\(\\)", features[, 2])  #identify cols with STD or Mean

combData <- combData[, keepCols] #only keep columns identified as std or mean


### Part3 Uses descriptive activity names to name the activities in the dataset
activity <- read.table("./activity_labels.txt")

activityLabel <- activity[combLabels[, 1], 2]

combLabels[, 1] <- activityLabel           #merge combLabels col1 with activity 

names(combLabels) <- "activity"            #label column activity

### Part4 Appropriately labels the data set with descriptive variable names and combines all data
features[,2] <- gsub('[-()]', '', features[,2])     
features[,2] <- gsub('mean', 'Mean', features[,2])   
features[,2] <- gsub('std', 'Std', features[,2])

names(combData) <- features[keepCols, 2] 
names(combSubject) <- "subject"

tidyData1 <- cbind(combSubject, combLabels, combData)
 
### Part5 Creates a second, independent tidy data set with the mean of each variable
### for each activity and each subject.
meltdata <- melt(tidyData1, id=c("subject","activity"))
tidyData2 <- dcast(meltdata, subject+activity ~ variable, mean)

write.csv(tidyData2, "tidycsv.txt", row.names=FALSE)