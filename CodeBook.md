
Coursera Getting and Cleaning Data Course Project - CodeBook
----------


Raw Data
----------
The raw data used for this exercise was obtained from the UCI Machine Learning Repository. This data was collected from  accelerometers from the Samsung Galaxy S smartphone for a group of 30 volunteers within an age bracket of 19-48 years old.  The full description of the data is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The raw data and readme files can be obtained at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The main documents to refernec that describe the input data include the features_info.txt and the README.txt


Calculations and Transformations
--------------------------------------
- Read the training and test datasets into dataframes 
- Extract only the mean and standard deviation columns for each measurement
- Uses descriptive activity names to name the activities in the dataset
- Appropriately labels the data set with descriptive variable names and combines all data into 1 data frame.
- Creates a second, independent tidy data set with the mean of each variable for each activity and each subject.




Output Data tidycsv.txt
----------

All Mean and STD columns are numeric and within the range [-1,1]

|Col |Col Name          | Type Class | Description
|----|------------------|------------|-----------------------------------------------------
|1   |subject           | Integer    | Unique identifier assigned to each subject. Value Range 1 to 30
|2   |activity          | Factor     | Type of activity: laying, sitting, standing, walking, walking downstairs, walking upstairs
|3   |tBodyAccMeanX     | Numeric    | Remaining descriptions: Average of each variable from the input data by subject/acitivity
|4   |tBodyAccMeanY     | Numeric    |   
|5   |tBodyAccMeanZ     | Numeric    |
|6   |tBodyAccStdX      | Numeric    |
|7   |tBodyAccStdY      | Numeric    |
|8   |tBodyAccStdZ      | Numeric    |   
|9   |tGravityAccMeanX  | Numeric    |
|10  |tGravityAccMeanY  | Numeric    |
|11  |tGravityAccMeanZ  | Numeric    |
|12  |tGravityAccStdX   | Numeric    |
|13  |tGravityAccStdY   | Numeric    |
|14  |tGravityAccStdZ   | Numeric    |
|15  |tBodyAccJerkMeanX | Numeric    |
|16  |tBodyAccJerkMeanY | Numeric    |
|17  |tBodyAccJerkMeanZ | Numeric    |
|18  |tBodyAccJerkStdX  | Numeric    |
|19  |tBodyAccJerkStdY  | Numeric    |
|20  |tBodyAccJerkStdZ  | Numeric    |
|21  |tBodyGyroMeanX    | Numeric    |
|22  |tBodyGyroMeanY    | Numeric    |
|23  |tBodyGyroMeanZ    | Numeric    |
|24  |tBodyGyroStdX     | Numeric    |
|25  |tBodyGyroStdY     | Numeric    |
|26  |tBodyGyroStdZ     | Numeric    |
|27  |tBodyGyroJerkMeanX | Numeric    |
|28  |tBodyGyroJerkMeanY | Numeric    |
|29  |tBodyGyroJerkMeanZ | Numeric    |
|30  |tBodyGyroJerkStdX  | Numeric    |
|31  |tBodyGyroJerkStdY  | Numeric    |
|32  |tBodyGyroJerkStdZ  | Numeric    |
|33  |tBodyAccMagMean    | Numeric    |
|34  |tBodyAccMagStd     | Numeric    |
|35  |tGravityAccMagMean | Numeric    |
|36  |tGravityAccMagStd  | Numeric    |
|37  |tBodyAccJerkMagMean | Numeric    |
|38  |tBodyAccJerkMagStd  | Numeric    |
|39  |tBodyGyroMagMean    | Numeric    |
|40  |tBodyGyroMagStd     | Numeric    |
|41  |tBodyGyroJerkMagMean | Numeric    |
|42  |tBodyGyroJerkMagStd  | Numeric    |
|43  |fBodyAccMeanX | Numeric    |
|44  |fBodyAccMeanY | Numeric    |
|45  |fBodyAccMeanZ | Numeric    |
|46  |fBodyAccStdX | Numeric    |
|47  |fBodyAccStdY | Numeric    |
|48  |fBodyAccStdZ | Numeric    |
|49  |fBodyAccJerkMeanX | Numeric    |
|50  |fBodyAccJerkMeanY | Numeric    |
|51  |fBodyAccJerkMeanZ | Numeric    |
|52  |fBodyAccJerkStdX | Numeric    |
|53  |fBodyAccJerkStdY | Numeric    |
|54  |fBodyAccJerkStdZ | Numeric    |
|55  |fBodyGyroMeanX | Numeric    |
|56  |fBodyGyroMeanY | Numeric    |
|57  |fBodyGyroMeanZ | Numeric    |
|58  |fBodyGyroStdX | Numeric    |
|59  |fBodyGyroStdY | Numeric    |
|60  |fBodyGyroStdZ | Numeric    |
|61  |fBodyAccMagMean | Numeric    |
|62  |fBodyAccMagStd  | Numeric    |
|63  |fBodyBodyAccJerkMagMean | Numeric    |
|64  |fBodyBodyAccJerkMagStd  | Numeric    |
|65  |fBodyBodyGyroMagMean    | Numeric    |
|66  |fBodyBodyGyroMagStd     | Numeric    |
|67  |fBodyBodyGyroJerkMagMean | Numeric    |
|68  |fBodyBodyGyroJerkMagStd  | Numeric    |