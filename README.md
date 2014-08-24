---
Title: "README - Getting and Cleaning Data Course Project"
Author: "Ron Seca"
Date: "Sunday, August 24, 2014"
Output: html_document
---

## README

### Getting and Cleaning Data Course Project Aug 24, 2014

### Project Assignment:

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

 You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
1. Extracts only the measurements on the mean and standard deviation for each measurement. 
1. Uses descriptive activity names to name the activities in the data set
1. Appropriately labels the data set with descriptive variable names. 
1. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

### Steps to reproduce this project

1. Open the R script run_analysis.R using R studio.
1. In R Studio -change working directory to the working directory/folder where the the R script (run_analysis.R) file is saved
1. Download the raw data file for this project from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
1. Unzip the raw data.
1. Move the raw data files so they are stored in a sub folder within the sam directory that the R script is stored.
1. Run the R script run_analysis.R

### Raw data files used in this project

raw data file  name | Description
-----------------|------------
activity_labels.txt | Links the class labels with their activity name
features.txt | List of all features
features_info.txt | Information about the variables used on the feature vector
X_train.txt | Training data set
y_train.txt| Training labels
X_test.txt | Test data set
y_test.tx | Test labels
subject_train.txt | Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30



### Data Transformations

1. The original raw dataset was downloaded from the website link listed above. The raw data fles used in this project are listed above.
1. The data files were all loaded into R
1. The data from training and the test datasets were merged to create one data set
1. Variable lables were added to the dataset using the features.txt file
1. The varaible lable names were modified to provide more descriptive labels with more information. Example: orignal variable label -> tBodyAcc-mean()-X   New variable lable -> timebodyaccelerationmeanx
1. An independent tidy dataset was created.
1. The average of each variable for each activity and each subject was obtained using the tidy dataset.
1. All remaining transformations and work are decribed in the README.md file.
1. The R file run_analysis.R was run on the original dataset


### The R script run_analysis.R does the following: 

1. Reads the raw data file into R.
1. Merges the training and the test sets to create one data set called dtDataset
1. Extracts only the measurements on the mean and standard deviation for each measurement. 
1. Uses descriptive activity names to name the activities in the data set
1. Appropriately labels the data set with descriptive variable names. 
1. Creates a second, independent tidy data set named 'tidy.txt' with the average of each variable for each activity and each subject. 

