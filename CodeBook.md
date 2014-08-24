---
title: "Codebook - Getting and Cleaning Data Course Project"
author: "Ron Seca"
date: "Sunday, August 24, 2014"
output: html_document
---

The source of the original data used in this data analysis is the Human Activity Recognition Using Smartphones Dataset v1.0 

The data was collected from from an experiment that used an accelerometer and gyroscope from the Samsung Galaxy S smartphone to collect data from 30 volunteers.

The original data set is located here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

To understand the information about the raw data which is stored in both datasets it is advised to read the "README.txt" and "features_info.txt" documentation files of the original dataset. 

## Project Assignment:

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

## Data Transformations

1. The original raw dataset was downloaded from the website link listed above.
1. The data from training and the test datasets were merged to create one data set
1. Variable lables were added to the dataset using the features.txt file
1. The varaible lable names were modified to provide more descriptive labels with more information. Example: orignal variable label -> tBodyAcc-mean()-X   New variable lable -> timebodyaccelerationmeanx
1. An independent tidy dataset was created.
1. The average of each variable for each activity and each subject was obtained using the tidy dataset.
1. All remaining transformations and work are decribed in the README.md file.
1. The R file run_analysis.R was run on the original dataset


## Tidy Dataset

The tidy dataset was created and exported to tidy.txt

The following are a list of variables contained within the tidy.txt file:


Variable name | Description
-----------------|------------
SubjectAvtivity | ID of the subject who performed the activity for each window sample. The subject range is from 1 to 30.
timebodyaccelerationmeanx | Time domain signal body acceleration signal mean x
timebodyaccelerationmeany | Time domain signal body acceleration signal mean y
timebodyaccelerationmeanz | Time domain signal body acceleration signal mean z
timebodyaccelerationstandarddeviationx | Time domain signal body acceleration signal standard deviation x
timebodyaccelerationstandarddeviationy | Time domain signal body acceleration signal standard deviation y
timebodyaccelerationstandarddeviationz | Time domain signal body acceleration signal standard deviation z
timegravityaccelerationmeanx| Time domain signal gravity acceleration signal mean x
timegravityaccelerationmeany | Time domain signal gravity acceleration signal mean y
timegravityaccelerationmeanz| Time domain signal gravity acceleration signal mean z
timegravityaccelerationstandarddeviationx |  Time domain signal gravity acceleration signal standard deviation x
timegravityaccelerationstandarddeviationy |  Time domain signal gravity acceleration signal standard deviation y
timegravityaccelerationstandarddeviationz |  Time domain signal gravity acceleration signal standard deviation z
timebodyaccelerationjerkmeanx |  Time domain signal body acceleration signal jerk mean x
timebodyaccelerationjerkmeany |  Time domain signal body acceleration signal jerk mean y
timebodyaccelerationjerkmeanz |  Time domain signal body acceleration signal jerk mean z
timebodyaccelerationjerkstandarddeviationx |  Time domain signal body acceleration signal jerk standard deviation x
timebodyaccelerationjerkstandarddeviationy |  Time domain signal body acceleration signal jerk standard deviation y
timebodyaccelerationjerkstandarddeviationz |  Time domain signal body acceleration signal jerk standard deviation z
timebodygyroscopemeanx |  Time domain signal body gyroscope signal mean x
timebodygyroscopemeany |  Time domain signal body gyroscope signal mean y
timebodygyroscopemeanz |  Time domain signal body gyroscope signal mean z
timebodygyroscopestandarddeviationx | Time domain signal body gyroscope signal standard deviation x
timebodygyroscopestandarddeviationy | Time domain signal body gyroscope signal standard deviation y
timebodygyroscopestandarddeviationz | Time domain signal body gyroscope signal standard deviation z
timebodygyroscopejerkmeanx |  Time domain signal body gyroscope signal jerk mean x
timebodygyroscopejerkmeany |  Time domain signal body gyroscope signal jerk mean y
timebodygyroscopejerkmeanz |  Time domain signal body gyroscope signal jerk mean z
timebodygyroscopejerkstandarddeviationx |  Time domain signal body gyroscope signal jerk standard deviation x
timebodygyroscopejerkstandarddeviationy |  Time domain signal body gyroscope signal jerk standard deviation y
timebodygyroscopejerkstandarddeviationz |  Time domain signal body gyroscope signal jerk standard deviation z
timebodyaccelerationmagnitudemean |  Time domain signal body acceleration magnitude mean
timebodyaccelerationmagnitudestandarddeviation | Time domain signal body acceleration magnitude standard deviation
timegravityaccelerationmagnitudemean |  Time domain signal gravity acceleration magnitude mean 
timegravityaccelerationmagnitudestandarddeviation |  Time domain signal gravity acceleration magnitude standard deviation
timebodyaccelerationjerkmagnitudemean |  Time domain signal body acceleration jerk magnitude mean
timebodyaccelerationjerkmagnitudestandarddeviation |  Time domain signal body acceleration jerk magnitude standard deviation
timebodygyroscopemagnitudemean |  Time domain signal body gyroscope magnitude mean
timebodygyroscopemagnitudestandarddeviation |  Time domain signal body gyroscope magnitude standard deviation
timebodygyroscopejerkmagnitudemean |  Time domain signal body gyroscope jerk magnitude mean
timebodygyroscopejerkmagnitudestandarddeviation | Time domain signal body gyroscope jerk magnitude standard deviation
frequencybodyaccelerationmeanx |  Frequency domain signal body acceleration signal mean x
frequencybodyaccelerationmeany |  Frequency domain signal body acceleration signal mean y
frequencybodyaccelerationmeanz |  Frequency domain signal body acceleration signal mean z
frequencybodyaccelerationstandarddeviationx |  Frequency domain signal body acceleration signal standard deviation x
frequencybodyaccelerationstandarddeviationy |  Frequency domain signal body acceleration signal standard deviation y
frequencybodyaccelerationstandarddeviationz |  Frequency domain signal body acceleration signal standard deviation z
frequencybodyaccelerationjerkmeanx |  Frequency domain signal body acceleration jerk signal mean x
frequencybodyaccelerationjerkmeany |  Frequency domain signal body acceleration jerk signal mean y
frequencybodyaccelerationjerkmeanz |  Frequency domain signal body acceleration jerk signal mean z
frequencybodyaccelerationjerkstandarddeviationx |  Frequency domain signal body acceleration jerk signal standard deviation x
frequencybodyaccelerationjerkstandarddeviationy |  Frequency domain signal body acceleration jerk signal standard deviation y
frequencybodyaccelerationjerkstandarddeviationz |  Frequency domain signal body acceleration jerk signal standard deviation z
frequencybodygyroscopemeanx |  Frequency domain signal body gyroscope signal mean x
frequencybodygyroscopemeany |  Frequency domain signal body gyroscope signal mean y
frequencybodygyroscopemeanz |  Frequency domain signal body gyroscope signal mean z
frequencybodygyroscopestandarddeviationx |  Frequency domain signal body gyroscope signal standard deviation x
frequencybodygyroscopestandarddeviationy |  Frequency domain signal body gyroscope signal standard deviation y
frequencybodygyroscopestandarddeviationz |  Frequency domain signal body gyroscope signal standard deviation z
frequencybodyaccelerationmagnitudemean |  Frequency domain signal body acceleration signal mean
frequencybodyaccelerationmagnitudestandarddeviation |  Frequency domain signal body acceleration signal standard deviation
frequencybodybodyaccelerationjerkmagnitudemean |  Frequency domain signal body acceleration signal jerk magnitude mean
frequencybodybodyaccelerationjerkmagnitudestandarddeviation |  Frequency domain signal body acceleration signal jerk magnitude standard deviation
frequencybodybodygyroscopemagnitudemean |  Frequency domain signal body gyroscope signal magnitude mean
frequencybodybodygyroscopemagnitudestandarddeviation |  Frequency domain signal body gyroscope signal magnitude standard deviation
frequencybodybodygyroscopejerkmagnitudemean |  Frequency domain signal body gyroscope signal jerk magnitude mean
frequencybodybodygyroscopejerkmagnitudestandarddeviation |  Frequency domain signal body gyroscope signal jerk magnitude standard deviation


```{r, echo=FALSE}

tidy <- read.delim("D:/Rdata/GettingandCleaningData/Courseproject/submittogithub/tidy.txt", stringsAsFactors=FALSE)

```

### Here is the structure of the tidy dataset

```{r}
str(tidy)
```

### Here is the structure of the tidy dataset

```{r}
summary(tidy)
```


### Here is a sample of the tidy dataset

```{r}
head(tidy)
```


### Here is a plot of the first variable timebodyaccelerationmeanx from the tidy dataset

```{r, echo=FALSE}
plot(tidy$timebodyaccelerationmeanx)
```


