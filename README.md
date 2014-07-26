
Coursera Getting and Cleaning Data Course Project 
----------

Overview
------------

This repo contains the R script, final output, README, and CodeBook for the Coursera Getting and Cleaning Data course project. The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set that can be easily used for further analysis

Raw Data
----------
The raw data used for this exercise was obtained from the UCI Machine Learning Repository. This data was collected from  accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The raw data can be obtained at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The script: run_analysis.R
----------

This R script reads the raw data, applies cleaning logic, and outputs a tidy data set. The process is broken down into the following steps:

 -Part1 - Read the training and test datasets into dataframes  
 -Part2 - Extract only the mean and standard deviation columns for each measurement
 -Part3 - Uses descriptive activity names to name the activities in the dataset
 -Part4 - Appropriately labels the data set with descriptive variable names and combines all data into 1 data frame.
-Part5 - Creates a second, independent tidy data set with the mean of each variable for each activity and each subject.


The output
-----------
The output file of the script is available in this repo. This is a comma delimited file stored as a text file 
as the upload tool used in the course does not explicity support the .csv extension. The file name is:
tidycsv.txt

Code Book
----------
There is a CodeBook available in this repo that describes the variables, the data, and transformations that were performed to clean the data.