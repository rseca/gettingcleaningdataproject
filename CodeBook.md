##Codebook

###Getting and Cleaning Data Course Project

####Aug 24, 2014

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




### Here is the structure of the tidy dataset


```r
str(tidy)
```

```
## 'data.frame':	180 obs. of  67 variables:
##  $ SubjectActivity                                            : chr  "1 LAYING" "1 SITTING" "1 STANDING" "1 WALKING" ...
##  $ timebodyaccelerationmeanx                                  : num  0.222 0.261 0.279 0.277 0.289 ...
##  $ timebodyaccelerationmeany                                  : num  -0.04051 -0.00131 -0.01614 -0.01738 -0.00992 ...
##  $ timebodyaccelerationmeanz                                  : num  -0.113 -0.105 -0.111 -0.111 -0.108 ...
##  $ timebodyaccelerationstandarddeviationx                     : num  -0.928 -0.977 -0.996 -0.284 0.03 ...
##  $ timebodyaccelerationstandarddeviationy                     : num  -0.8368 -0.9226 -0.9732 0.1145 -0.0319 ...
##  $ timebodyaccelerationstandarddeviationz                     : num  -0.826 -0.94 -0.98 -0.26 -0.23 ...
##  $ timegravityaccelerationmeanx                               : num  -0.249 0.832 0.943 0.935 0.932 ...
##  $ timegravityaccelerationmeany                               : num  0.706 0.204 -0.273 -0.282 -0.267 ...
##  $ timegravityaccelerationmeanz                               : num  0.4458 0.332 0.0135 -0.0681 -0.0621 ...
##  $ timegravityaccelerationstandarddeviationx                  : num  -0.897 -0.968 -0.994 -0.977 -0.951 ...
##  $ timegravityaccelerationstandarddeviationy                  : num  -0.908 -0.936 -0.981 -0.971 -0.937 ...
##  $ timegravityaccelerationstandarddeviationz                  : num  -0.852 -0.949 -0.976 -0.948 -0.896 ...
##  $ timebodyaccelerationjerkmeanx                              : num  0.0811 0.0775 0.0754 0.074 0.0542 ...
##  $ timebodyaccelerationjerkmeany                              : num  0.003838 -0.000619 0.007976 0.028272 0.02965 ...
##  $ timebodyaccelerationjerkmeanz                              : num  0.01083 -0.00337 -0.00369 -0.00417 -0.01097 ...
##  $ timebodyaccelerationjerkstandarddeviationx                 : num  -0.9585 -0.9864 -0.9946 -0.1136 -0.0123 ...
##  $ timebodyaccelerationjerkstandarddeviationy                 : num  -0.924 -0.981 -0.986 0.067 -0.102 ...
##  $ timebodyaccelerationjerkstandarddeviationz                 : num  -0.955 -0.988 -0.992 -0.503 -0.346 ...
##  $ timebodygyroscopemeanx                                     : num  -0.0166 -0.0454 -0.024 -0.0418 -0.0351 ...
##  $ timebodygyroscopemeany                                     : num  -0.0645 -0.0919 -0.0594 -0.0695 -0.0909 ...
##  $ timebodygyroscopemeanz                                     : num  0.1487 0.0629 0.0748 0.0849 0.0901 ...
##  $ timebodygyroscopestandarddeviationx                        : num  -0.874 -0.977 -0.987 -0.474 -0.458 ...
##  $ timebodygyroscopestandarddeviationy                        : num  -0.9511 -0.9665 -0.9877 -0.0546 -0.1263 ...
##  $ timebodygyroscopestandarddeviationz                        : num  -0.908 -0.941 -0.981 -0.344 -0.125 ...
##  $ timebodygyroscopejerkmeanx                                 : num  -0.1073 -0.0937 -0.0996 -0.09 -0.074 ...
##  $ timebodygyroscopejerkmeany                                 : num  -0.0415 -0.0402 -0.0441 -0.0398 -0.044 ...
##  $ timebodygyroscopejerkmeanz                                 : num  -0.0741 -0.0467 -0.049 -0.0461 -0.027 ...
##  $ timebodygyroscopejerkstandarddeviationx                    : num  -0.919 -0.992 -0.993 -0.207 -0.487 ...
##  $ timebodygyroscopejerkstandarddeviationy                    : num  -0.968 -0.99 -0.995 -0.304 -0.239 ...
##  $ timebodygyroscopejerkstandarddeviationz                    : num  -0.958 -0.988 -0.992 -0.404 -0.269 ...
##  $ timebodyaccelerationmagnitudemean                          : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
##  $ timebodyaccelerationmagnitudestandarddeviation             : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
##  $ timegravityaccelerationmagnitudemean                       : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
##  $ timegravityaccelerationmagnitudestandarddeviation          : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
##  $ timebodyaccelerationjerkmagnitudemean                      : num  -0.9544 -0.9874 -0.9924 -0.1414 -0.0894 ...
##  $ timebodyaccelerationjerkmagnitudestandarddeviation         : num  -0.9282 -0.9841 -0.9931 -0.0745 -0.0258 ...
##  $ timebodygyroscopemagnitudemean                             : num  -0.8748 -0.9309 -0.9765 -0.161 -0.0757 ...
##  $ timebodygyroscopemagnitudestandarddeviation                : num  -0.819 -0.935 -0.979 -0.187 -0.226 ...
##  $ timebodygyroscopejerkmagnitudemean                         : num  -0.963 -0.992 -0.995 -0.299 -0.295 ...
##  $ timebodygyroscopejerkmagnitudestandarddeviation            : num  -0.936 -0.988 -0.995 -0.325 -0.307 ...
##  $ frequencybodyaccelerationmeanx                             : num  -0.9391 -0.9796 -0.9952 -0.2028 0.0382 ...
##  $ frequencybodyaccelerationmeany                             : num  -0.86707 -0.94408 -0.97707 0.08971 0.00155 ...
##  $ frequencybodyaccelerationmeanz                             : num  -0.883 -0.959 -0.985 -0.332 -0.226 ...
##  $ frequencybodyaccelerationstandarddeviationx                : num  -0.9244 -0.9764 -0.996 -0.3191 0.0243 ...
##  $ frequencybodyaccelerationstandarddeviationy                : num  -0.834 -0.917 -0.972 0.056 -0.113 ...
##  $ frequencybodyaccelerationstandarddeviationz                : num  -0.813 -0.934 -0.978 -0.28 -0.298 ...
##  $ frequencybodyaccelerationjerkmeanx                         : num  -0.9571 -0.9866 -0.9946 -0.1705 -0.0277 ...
##  $ frequencybodyaccelerationjerkmeany                         : num  -0.9225 -0.9816 -0.9854 -0.0352 -0.1287 ...
##  $ frequencybodyaccelerationjerkmeanz                         : num  -0.948 -0.986 -0.991 -0.469 -0.288 ...
##  $ frequencybodyaccelerationjerkstandarddeviationx            : num  -0.9642 -0.9875 -0.9951 -0.1336 -0.0863 ...
##  $ frequencybodyaccelerationjerkstandarddeviationy            : num  -0.932 -0.983 -0.987 0.107 -0.135 ...
##  $ frequencybodyaccelerationjerkstandarddeviationz            : num  -0.961 -0.988 -0.992 -0.535 -0.402 ...
##  $ frequencybodygyroscopemeanx                                : num  -0.85 -0.976 -0.986 -0.339 -0.352 ...
##  $ frequencybodygyroscopemeany                                : num  -0.9522 -0.9758 -0.989 -0.1031 -0.0557 ...
##  $ frequencybodygyroscopemeanz                                : num  -0.9093 -0.9513 -0.9808 -0.2559 -0.0319 ...
##  $ frequencybodygyroscopestandarddeviationx                   : num  -0.882 -0.978 -0.987 -0.517 -0.495 ...
##  $ frequencybodygyroscopestandarddeviationy                   : num  -0.9512 -0.9623 -0.9871 -0.0335 -0.1814 ...
##  $ frequencybodygyroscopestandarddeviationz                   : num  -0.917 -0.944 -0.982 -0.437 -0.238 ...
##  $ frequencybodyaccelerationmagnitudemean                     : num  -0.8618 -0.9478 -0.9854 -0.1286 0.0966 ...
##  $ frequencybodyaccelerationmagnitudestandarddeviation        : num  -0.798 -0.928 -0.982 -0.398 -0.187 ...
##  $ frequencybodybodyaccelerationjerkmagnitudemean             : num  -0.9333 -0.9853 -0.9925 -0.0571 0.0262 ...
##  $ frequencybodybodyaccelerationjerkmagnitudestandarddeviation: num  -0.922 -0.982 -0.993 -0.103 -0.104 ...
##  $ frequencybodybodygyroscopemagnitudemean                    : num  -0.862 -0.958 -0.985 -0.199 -0.186 ...
##  $ frequencybodybodygyroscopemagnitudestandarddeviation       : num  -0.824 -0.932 -0.978 -0.321 -0.398 ...
##  $ frequencybodybodygyroscopejerkmagnitudemean                : num  -0.942 -0.99 -0.995 -0.319 -0.282 ...
##  $ frequencybodybodygyroscopejerkmagnitudestandarddeviation   : num  -0.933 -0.987 -0.995 -0.382 -0.392 ...
```

### Here is the structure of the tidy dataset


```r
summary(tidy)
```

```
##  SubjectActivity    timebodyaccelerationmeanx timebodyaccelerationmeany
##  Length:180         Min.   :0.222             Min.   :-0.04051         
##  Class :character   1st Qu.:0.271             1st Qu.:-0.02002         
##  Mode  :character   Median :0.277             Median :-0.01726         
##                     Mean   :0.274             Mean   :-0.01788         
##                     3rd Qu.:0.280             3rd Qu.:-0.01494         
##                     Max.   :0.301             Max.   :-0.00131         
##  timebodyaccelerationmeanz timebodyaccelerationstandarddeviationx
##  Min.   :-0.1525           Min.   :-0.996                        
##  1st Qu.:-0.1121           1st Qu.:-0.980                        
##  Median :-0.1082           Median :-0.753                        
##  Mean   :-0.1092           Mean   :-0.558                        
##  3rd Qu.:-0.1044           3rd Qu.:-0.198                        
##  Max.   :-0.0754           Max.   : 0.627                        
##  timebodyaccelerationstandarddeviationy
##  Min.   :-0.9902                       
##  1st Qu.:-0.9421                       
##  Median :-0.5090                       
##  Mean   :-0.4605                       
##  3rd Qu.:-0.0308                       
##  Max.   : 0.6169                       
##  timebodyaccelerationstandarddeviationz timegravityaccelerationmeanx
##  Min.   :-0.988                         Min.   :-0.680              
##  1st Qu.:-0.950                         1st Qu.: 0.838              
##  Median :-0.652                         Median : 0.921              
##  Mean   :-0.576                         Mean   : 0.698              
##  3rd Qu.:-0.231                         3rd Qu.: 0.942              
##  Max.   : 0.609                         Max.   : 0.975              
##  timegravityaccelerationmeany timegravityaccelerationmeanz
##  Min.   :-0.4799              Min.   :-0.4951             
##  1st Qu.:-0.2332              1st Qu.:-0.1173             
##  Median :-0.1278              Median : 0.0238             
##  Mean   :-0.0162              Mean   : 0.0741             
##  3rd Qu.: 0.0877              3rd Qu.: 0.1495             
##  Max.   : 0.9566              Max.   : 0.9579             
##  timegravityaccelerationstandarddeviationx
##  Min.   :-0.997                           
##  1st Qu.:-0.983                           
##  Median :-0.970                           
##  Mean   :-0.964                           
##  3rd Qu.:-0.951                           
##  Max.   :-0.830                           
##  timegravityaccelerationstandarddeviationy
##  Min.   :-0.994                           
##  1st Qu.:-0.971                           
##  Median :-0.959                           
##  Mean   :-0.952                           
##  3rd Qu.:-0.937                           
##  Max.   :-0.644                           
##  timegravityaccelerationstandarddeviationz timebodyaccelerationjerkmeanx
##  Min.   :-0.991                            Min.   :0.0427               
##  1st Qu.:-0.961                            1st Qu.:0.0740               
##  Median :-0.945                            Median :0.0764               
##  Mean   :-0.936                            Mean   :0.0795               
##  3rd Qu.:-0.918                            3rd Qu.:0.0833               
##  Max.   :-0.610                            Max.   :0.1302               
##  timebodyaccelerationjerkmeany timebodyaccelerationjerkmeanz
##  Min.   :-0.03869              Min.   :-0.06746             
##  1st Qu.: 0.00047              1st Qu.:-0.01060             
##  Median : 0.00947              Median :-0.00386             
##  Mean   : 0.00757              Mean   :-0.00495             
##  3rd Qu.: 0.01340              3rd Qu.: 0.00196             
##  Max.   : 0.05682              Max.   : 0.03805             
##  timebodyaccelerationjerkstandarddeviationx
##  Min.   :-0.995                            
##  1st Qu.:-0.983                            
##  Median :-0.810                            
##  Mean   :-0.595                            
##  3rd Qu.:-0.223                            
##  Max.   : 0.544                            
##  timebodyaccelerationjerkstandarddeviationy
##  Min.   :-0.990                            
##  1st Qu.:-0.972                            
##  Median :-0.776                            
##  Mean   :-0.565                            
##  3rd Qu.:-0.148                            
##  Max.   : 0.355                            
##  timebodyaccelerationjerkstandarddeviationz timebodygyroscopemeanx
##  Min.   :-0.993                             Min.   :-0.2058       
##  1st Qu.:-0.983                             1st Qu.:-0.0471       
##  Median :-0.884                             Median :-0.0287       
##  Mean   :-0.736                             Mean   :-0.0324       
##  3rd Qu.:-0.512                             3rd Qu.:-0.0168       
##  Max.   : 0.031                             Max.   : 0.1927       
##  timebodygyroscopemeany timebodygyroscopemeanz
##  Min.   :-0.2042        Min.   :-0.0724       
##  1st Qu.:-0.0896        1st Qu.: 0.0747       
##  Median :-0.0732        Median : 0.0851       
##  Mean   :-0.0743        Mean   : 0.0874       
##  3rd Qu.:-0.0611        3rd Qu.: 0.1018       
##  Max.   : 0.0275        Max.   : 0.1791       
##  timebodygyroscopestandarddeviationx timebodygyroscopestandarddeviationy
##  Min.   :-0.994                      Min.   :-0.994                     
##  1st Qu.:-0.974                      1st Qu.:-0.963                     
##  Median :-0.789                      Median :-0.802                     
##  Mean   :-0.692                      Mean   :-0.653                     
##  3rd Qu.:-0.441                      3rd Qu.:-0.420                     
##  Max.   : 0.268                      Max.   : 0.476                     
##  timebodygyroscopestandarddeviationz timebodygyroscopejerkmeanx
##  Min.   :-0.986                      Min.   :-0.1572           
##  1st Qu.:-0.961                      1st Qu.:-0.1032           
##  Median :-0.801                      Median :-0.0987           
##  Mean   :-0.616                      Mean   :-0.0961           
##  3rd Qu.:-0.311                      3rd Qu.:-0.0911           
##  Max.   : 0.565                      Max.   :-0.0221           
##  timebodygyroscopejerkmeany timebodygyroscopejerkmeanz
##  Min.   :-0.0768            Min.   :-0.09250          
##  1st Qu.:-0.0455            1st Qu.:-0.06172          
##  Median :-0.0411            Median :-0.05343          
##  Mean   :-0.0427            Mean   :-0.05480          
##  3rd Qu.:-0.0384            3rd Qu.:-0.04898          
##  Max.   :-0.0132            Max.   :-0.00694          
##  timebodygyroscopejerkstandarddeviationx
##  Min.   :-0.997                         
##  1st Qu.:-0.980                         
##  Median :-0.840                         
##  Mean   :-0.704                         
##  3rd Qu.:-0.463                         
##  Max.   : 0.179                         
##  timebodygyroscopejerkstandarddeviationy
##  Min.   :-0.997                         
##  1st Qu.:-0.983                         
##  Median :-0.894                         
##  Mean   :-0.764                         
##  3rd Qu.:-0.586                         
##  Max.   : 0.296                         
##  timebodygyroscopejerkstandarddeviationz timebodyaccelerationmagnitudemean
##  Min.   :-0.995                          Min.   :-0.9865                  
##  1st Qu.:-0.985                          1st Qu.:-0.9573                  
##  Median :-0.861                          Median :-0.4829                  
##  Mean   :-0.710                          Mean   :-0.4973                  
##  3rd Qu.:-0.474                          3rd Qu.:-0.0919                  
##  Max.   : 0.193                          Max.   : 0.6446                  
##  timebodyaccelerationmagnitudestandarddeviation
##  Min.   :-0.987                                
##  1st Qu.:-0.943                                
##  Median :-0.607                                
##  Mean   :-0.544                                
##  3rd Qu.:-0.209                                
##  Max.   : 0.428                                
##  timegravityaccelerationmagnitudemean
##  Min.   :-0.9865                     
##  1st Qu.:-0.9573                     
##  Median :-0.4829                     
##  Mean   :-0.4973                     
##  3rd Qu.:-0.0919                     
##  Max.   : 0.6446                     
##  timegravityaccelerationmagnitudestandarddeviation
##  Min.   :-0.987                                   
##  1st Qu.:-0.943                                   
##  Median :-0.607                                   
##  Mean   :-0.544                                   
##  3rd Qu.:-0.209                                   
##  Max.   : 0.428                                   
##  timebodyaccelerationjerkmagnitudemean
##  Min.   :-0.993                       
##  1st Qu.:-0.981                       
##  Median :-0.817                       
##  Mean   :-0.608                       
##  3rd Qu.:-0.246                       
##  Max.   : 0.434                       
##  timebodyaccelerationjerkmagnitudestandarddeviation
##  Min.   :-0.995                                    
##  1st Qu.:-0.977                                    
##  Median :-0.801                                    
##  Mean   :-0.584                                    
##  3rd Qu.:-0.217                                    
##  Max.   : 0.451                                    
##  timebodygyroscopemagnitudemean
##  Min.   :-0.981                
##  1st Qu.:-0.946                
##  Median :-0.655                
##  Mean   :-0.565                
##  3rd Qu.:-0.216                
##  Max.   : 0.418                
##  timebodygyroscopemagnitudestandarddeviation
##  Min.   :-0.981                             
##  1st Qu.:-0.948                             
##  Median :-0.742                             
##  Mean   :-0.630                             
##  3rd Qu.:-0.360                             
##  Max.   : 0.300                             
##  timebodygyroscopejerkmagnitudemean
##  Min.   :-0.9973                   
##  1st Qu.:-0.9852                   
##  Median :-0.8648                   
##  Mean   :-0.7364                   
##  3rd Qu.:-0.5119                   
##  Max.   : 0.0876                   
##  timebodygyroscopejerkmagnitudestandarddeviation
##  Min.   :-0.998                                 
##  1st Qu.:-0.981                                 
##  Median :-0.881                                 
##  Mean   :-0.755                                 
##  3rd Qu.:-0.577                                 
##  Max.   : 0.250                                 
##  frequencybodyaccelerationmeanx frequencybodyaccelerationmeany
##  Min.   :-0.995                 Min.   :-0.9890               
##  1st Qu.:-0.979                 1st Qu.:-0.9536               
##  Median :-0.769                 Median :-0.5950               
##  Mean   :-0.576                 Mean   :-0.4887               
##  3rd Qu.:-0.217                 3rd Qu.:-0.0634               
##  Max.   : 0.537                 Max.   : 0.5242               
##  frequencybodyaccelerationmeanz
##  Min.   :-0.990                
##  1st Qu.:-0.962                
##  Median :-0.724                
##  Mean   :-0.630                
##  3rd Qu.:-0.318                
##  Max.   : 0.281                
##  frequencybodyaccelerationstandarddeviationx
##  Min.   :-0.997                             
##  1st Qu.:-0.982                             
##  Median :-0.747                             
##  Mean   :-0.552                             
##  3rd Qu.:-0.197                             
##  Max.   : 0.658                             
##  frequencybodyaccelerationstandarddeviationy
##  Min.   :-0.9907                            
##  1st Qu.:-0.9404                            
##  Median :-0.5134                            
##  Mean   :-0.4815                            
##  3rd Qu.:-0.0791                            
##  Max.   : 0.5602                            
##  frequencybodyaccelerationstandarddeviationz
##  Min.   :-0.987                             
##  1st Qu.:-0.946                             
##  Median :-0.644                             
##  Mean   :-0.582                             
##  3rd Qu.:-0.266                             
##  Max.   : 0.687                             
##  frequencybodyaccelerationjerkmeanx frequencybodyaccelerationjerkmeany
##  Min.   :-0.995                     Min.   :-0.989                    
##  1st Qu.:-0.983                     1st Qu.:-0.973                    
##  Median :-0.813                     Median :-0.782                    
##  Mean   :-0.614                     Mean   :-0.588                    
##  3rd Qu.:-0.282                     3rd Qu.:-0.196                    
##  Max.   : 0.474                     Max.   : 0.277                    
##  frequencybodyaccelerationjerkmeanz
##  Min.   :-0.992                    
##  1st Qu.:-0.980                    
##  Median :-0.871                    
##  Mean   :-0.714                    
##  3rd Qu.:-0.470                    
##  Max.   : 0.158                    
##  frequencybodyaccelerationjerkstandarddeviationx
##  Min.   :-0.995                                 
##  1st Qu.:-0.985                                 
##  Median :-0.825                                 
##  Mean   :-0.612                                 
##  3rd Qu.:-0.247                                 
##  Max.   : 0.477                                 
##  frequencybodyaccelerationjerkstandarddeviationy
##  Min.   :-0.991                                 
##  1st Qu.:-0.974                                 
##  Median :-0.785                                 
##  Mean   :-0.571                                 
##  3rd Qu.:-0.169                                 
##  Max.   : 0.350                                 
##  frequencybodyaccelerationjerkstandarddeviationz
##  Min.   :-0.9931                                
##  1st Qu.:-0.9837                                
##  Median :-0.8951                                
##  Mean   :-0.7565                                
##  3rd Qu.:-0.5438                                
##  Max.   :-0.0062                                
##  frequencybodygyroscopemeanx frequencybodygyroscopemeany
##  Min.   :-0.993              Min.   :-0.994             
##  1st Qu.:-0.970              1st Qu.:-0.970             
##  Median :-0.730              Median :-0.814             
##  Mean   :-0.637              Mean   :-0.677             
##  3rd Qu.:-0.339              3rd Qu.:-0.446             
##  Max.   : 0.475              Max.   : 0.329             
##  frequencybodygyroscopemeanz frequencybodygyroscopestandarddeviationx
##  Min.   :-0.986              Min.   :-0.995                          
##  1st Qu.:-0.962              1st Qu.:-0.975                          
##  Median :-0.791              Median :-0.809                          
##  Mean   :-0.604              Mean   :-0.711                          
##  3rd Qu.:-0.264              3rd Qu.:-0.481                          
##  Max.   : 0.492              Max.   : 0.197                          
##  frequencybodygyroscopestandarddeviationy
##  Min.   :-0.994                          
##  1st Qu.:-0.960                          
##  Median :-0.796                          
##  Mean   :-0.645                          
##  3rd Qu.:-0.415                          
##  Max.   : 0.646                          
##  frequencybodygyroscopestandarddeviationz
##  Min.   :-0.987                          
##  1st Qu.:-0.964                          
##  Median :-0.822                          
##  Mean   :-0.658                          
##  3rd Qu.:-0.392                          
##  Max.   : 0.522                          
##  frequencybodyaccelerationmagnitudemean
##  Min.   :-0.987                        
##  1st Qu.:-0.956                        
##  Median :-0.670                        
##  Mean   :-0.536                        
##  3rd Qu.:-0.162                        
##  Max.   : 0.587                        
##  frequencybodyaccelerationmagnitudestandarddeviation
##  Min.   :-0.988                                     
##  1st Qu.:-0.945                                     
##  Median :-0.651                                     
##  Mean   :-0.621                                     
##  3rd Qu.:-0.365                                     
##  Max.   : 0.179                                     
##  frequencybodybodyaccelerationjerkmagnitudemean
##  Min.   :-0.994                                
##  1st Qu.:-0.977                                
##  Median :-0.794                                
##  Mean   :-0.576                                
##  3rd Qu.:-0.187                                
##  Max.   : 0.538                                
##  frequencybodybodyaccelerationjerkmagnitudestandarddeviation
##  Min.   :-0.994                                             
##  1st Qu.:-0.975                                             
##  Median :-0.813                                             
##  Mean   :-0.599                                             
##  3rd Qu.:-0.267                                             
##  Max.   : 0.316                                             
##  frequencybodybodygyroscopemagnitudemean
##  Min.   :-0.987                         
##  1st Qu.:-0.962                         
##  Median :-0.766                         
##  Mean   :-0.667                         
##  3rd Qu.:-0.409                         
##  Max.   : 0.204                         
##  frequencybodybodygyroscopemagnitudestandarddeviation
##  Min.   :-0.982                                      
##  1st Qu.:-0.949                                      
##  Median :-0.773                                      
##  Mean   :-0.672                                      
##  3rd Qu.:-0.428                                      
##  Max.   : 0.237                                      
##  frequencybodybodygyroscopejerkmagnitudemean
##  Min.   :-0.998                             
##  1st Qu.:-0.981                             
##  Median :-0.878                             
##  Mean   :-0.756                             
##  3rd Qu.:-0.583                             
##  Max.   : 0.147                             
##  frequencybodybodygyroscopejerkmagnitudestandarddeviation
##  Min.   :-0.998                                          
##  1st Qu.:-0.980                                          
##  Median :-0.894                                          
##  Mean   :-0.771                                          
##  3rd Qu.:-0.608                                          
##  Max.   : 0.288
```


### Here is a sample of the tidy dataset


```r
head(tidy)
```

```
##        SubjectActivity timebodyaccelerationmeanx timebodyaccelerationmeany
## 1             1 LAYING                    0.2216                 -0.040514
## 2            1 SITTING                    0.2612                 -0.001308
## 3           1 STANDING                    0.2789                 -0.016138
## 4            1 WALKING                    0.2773                 -0.017384
## 5 1 WALKING_DOWNSTAIRS                    0.2892                 -0.009919
## 6   1 WALKING_UPSTAIRS                    0.2555                 -0.023953
##   timebodyaccelerationmeanz timebodyaccelerationstandarddeviationx
## 1                   -0.1132                               -0.92806
## 2                   -0.1045                               -0.97723
## 3                   -0.1106                               -0.99576
## 4                   -0.1111                               -0.28374
## 5                   -0.1076                                0.03004
## 6                   -0.0973                               -0.35471
##   timebodyaccelerationstandarddeviationy
## 1                               -0.83683
## 2                               -0.92262
## 3                               -0.97319
## 4                                0.11446
## 5                               -0.03194
## 6                               -0.00232
##   timebodyaccelerationstandarddeviationz timegravityaccelerationmeanx
## 1                               -0.82606                      -0.2489
## 2                               -0.93959                       0.8315
## 3                               -0.97978                       0.9430
## 4                               -0.26003                       0.9352
## 5                               -0.23043                       0.9319
## 6                               -0.01948                       0.8934
##   timegravityaccelerationmeany timegravityaccelerationmeanz
## 1                       0.7055                      0.44582
## 2                       0.2044                      0.33204
## 3                      -0.2730                      0.01349
## 4                      -0.2822                     -0.06810
## 5                      -0.2666                     -0.06212
## 6                      -0.3622                     -0.07540
##   timegravityaccelerationstandarddeviationx
## 1                                   -0.8968
## 2                                   -0.9685
## 3                                   -0.9938
## 4                                   -0.9766
## 5                                   -0.9506
## 6                                   -0.9564
##   timegravityaccelerationstandarddeviationy
## 1                                   -0.9077
## 2                                   -0.9355
## 3                                   -0.9812
## 4                                   -0.9713
## 5                                   -0.9370
## 6                                   -0.9528
##   timegravityaccelerationstandarddeviationz timebodyaccelerationjerkmeanx
## 1                                   -0.8524                       0.08109
## 2                                   -0.9490                       0.07748
## 3                                   -0.9763                       0.07538
## 4                                   -0.9477                       0.07404
## 5                                   -0.8959                       0.05416
## 6                                   -0.9124                       0.10137
##   timebodyaccelerationjerkmeany timebodyaccelerationjerkmeanz
## 1                     0.0038382                      0.010834
## 2                    -0.0006191                     -0.003368
## 3                     0.0079757                     -0.003685
## 4                     0.0282721                     -0.004168
## 5                     0.0296504                     -0.010972
## 6                     0.0194863                     -0.045563
##   timebodyaccelerationjerkstandarddeviationx
## 1                                   -0.95848
## 2                                   -0.98643
## 3                                   -0.99460
## 4                                   -0.11362
## 5                                   -0.01228
## 6                                   -0.44684
##   timebodyaccelerationjerkstandarddeviationy
## 1                                    -0.9241
## 2                                    -0.9814
## 3                                    -0.9856
## 4                                     0.0670
## 5                                    -0.1016
## 6                                    -0.3783
##   timebodyaccelerationjerkstandarddeviationz timebodygyroscopemeanx
## 1                                    -0.9549               -0.01655
## 2                                    -0.9879               -0.04535
## 3                                    -0.9923               -0.02399
## 4                                    -0.5027               -0.04183
## 5                                    -0.3457               -0.03508
## 6                                    -0.7066                0.05055
##   timebodygyroscopemeany timebodygyroscopemeanz
## 1               -0.06449                0.14869
## 2               -0.09192                0.06293
## 3               -0.05940                0.07480
## 4               -0.06953                0.08494
## 5               -0.09094                0.09009
## 6               -0.16617                0.05836
##   timebodygyroscopestandarddeviationx timebodygyroscopestandarddeviationy
## 1                             -0.8735                           -0.951090
## 2                             -0.9772                           -0.966474
## 3                             -0.9872                           -0.987734
## 4                             -0.4735                           -0.054608
## 5                             -0.4580                           -0.126349
## 6                             -0.5449                            0.004105
##   timebodygyroscopestandarddeviationz timebodygyroscopejerkmeanx
## 1                             -0.9083                   -0.10727
## 2                             -0.9414                   -0.09368
## 3                             -0.9806                   -0.09961
## 4                             -0.3443                   -0.09000
## 5                             -0.1247                   -0.07396
## 6                             -0.5072                   -0.12223
##   timebodygyroscopejerkmeany timebodygyroscopejerkmeanz
## 1                   -0.04152                   -0.07405
## 2                   -0.04021                   -0.04670
## 3                   -0.04406                   -0.04895
## 4                   -0.03984                   -0.04613
## 5                   -0.04399                   -0.02705
## 6                   -0.04215                   -0.04071
##   timebodygyroscopejerkstandarddeviationx
## 1                                 -0.9186
## 2                                 -0.9917
## 3                                 -0.9929
## 4                                 -0.2074
## 5                                 -0.4870
## 6                                 -0.6148
##   timebodygyroscopejerkstandarddeviationy
## 1                                 -0.9679
## 2                                 -0.9895
## 3                                 -0.9951
## 4                                 -0.3045
## 5                                 -0.2388
## 6                                 -0.6017
##   timebodygyroscopejerkstandarddeviationz
## 1                                 -0.9578
## 2                                 -0.9879
## 3                                 -0.9921
## 4                                 -0.4043
## 5                                 -0.2688
## 6                                 -0.6063
##   timebodyaccelerationmagnitudemean
## 1                          -0.84193
## 2                          -0.94854
## 3                          -0.98428
## 4                          -0.13697
## 5                           0.02719
## 6                          -0.12993
##   timebodyaccelerationmagnitudestandarddeviation
## 1                                       -0.79514
## 2                                       -0.92708
## 3                                       -0.98194
## 4                                       -0.21969
## 5                                        0.01988
## 6                                       -0.32497
##   timegravityaccelerationmagnitudemean
## 1                             -0.84193
## 2                             -0.94854
## 3                             -0.98428
## 4                             -0.13697
## 5                              0.02719
## 6                             -0.12993
##   timegravityaccelerationmagnitudestandarddeviation
## 1                                          -0.79514
## 2                                          -0.92708
## 3                                          -0.98194
## 4                                          -0.21969
## 5                                           0.01988
## 6                                          -0.32497
##   timebodyaccelerationjerkmagnitudemean
## 1                              -0.95440
## 2                              -0.98736
## 3                              -0.99237
## 4                              -0.14143
## 5                              -0.08945
## 6                              -0.46650
##   timebodyaccelerationjerkmagnitudestandarddeviation
## 1                                           -0.92825
## 2                                           -0.98412
## 3                                           -0.99310
## 4                                           -0.07447
## 5                                           -0.02579
## 6                                           -0.47899
##   timebodygyroscopemagnitudemean
## 1                       -0.87476
## 2                       -0.93089
## 3                       -0.97649
## 4                       -0.16098
## 5                       -0.07574
## 6                       -0.12674
##   timebodygyroscopemagnitudestandarddeviation
## 1                                     -0.8190
## 2                                     -0.9345
## 3                                     -0.9787
## 4                                     -0.1870
## 5                                     -0.2257
## 6                                     -0.1486
##   timebodygyroscopejerkmagnitudemean
## 1                            -0.9635
## 2                            -0.9920
## 3                            -0.9950
## 4                            -0.2987
## 5                            -0.2955
## 6                            -0.5949
##   timebodygyroscopejerkmagnitudestandarddeviation
## 1                                         -0.9358
## 2                                         -0.9883
## 3                                         -0.9947
## 4                                         -0.3253
## 5                                         -0.3065
## 6                                         -0.6486
##   frequencybodyaccelerationmeanx frequencybodyaccelerationmeany
## 1                       -0.93910                       -0.86707
## 2                       -0.97964                       -0.94408
## 3                       -0.99525                       -0.97707
## 4                       -0.20279                        0.08971
## 5                        0.03823                        0.00155
## 6                       -0.40432                       -0.19098
##   frequencybodyaccelerationmeanz
## 1                        -0.8827
## 2                        -0.9592
## 3                        -0.9853
## 4                        -0.3316
## 5                        -0.2256
## 6                        -0.4333
##   frequencybodyaccelerationstandarddeviationx
## 1                                    -0.92444
## 2                                    -0.97641
## 3                                    -0.99603
## 4                                    -0.31913
## 5                                     0.02433
## 6                                    -0.33743
##   frequencybodyaccelerationstandarddeviationy
## 1                                    -0.83363
## 2                                    -0.91728
## 3                                    -0.97229
## 4                                     0.05604
## 5                                    -0.11296
## 6                                     0.02177
##   frequencybodyaccelerationstandarddeviationz
## 1                                    -0.81289
## 2                                    -0.93447
## 3                                    -0.97794
## 4                                    -0.27969
## 5                                    -0.29793
## 6                                     0.08596
##   frequencybodyaccelerationjerkmeanx frequencybodyaccelerationjerkmeany
## 1                           -0.95707                           -0.92246
## 2                           -0.98660                           -0.98158
## 3                           -0.99463                           -0.98542
## 4                           -0.17055                           -0.03523
## 5                           -0.02766                           -0.12867
## 6                           -0.47988                           -0.41344
##   frequencybodyaccelerationjerkmeanz
## 1                            -0.9481
## 2                            -0.9861
## 3                            -0.9908
## 4                            -0.4690
## 5                            -0.2883
## 6                            -0.6855
##   frequencybodyaccelerationjerkstandarddeviationx
## 1                                        -0.96416
## 2                                        -0.98749
## 3                                        -0.99507
## 4                                        -0.13359
## 5                                        -0.08633
## 6                                        -0.46191
##   frequencybodyaccelerationjerkstandarddeviationy
## 1                                         -0.9322
## 2                                         -0.9825
## 3                                         -0.9870
## 4                                          0.1067
## 5                                         -0.1346
## 6                                         -0.3818
##   frequencybodyaccelerationjerkstandarddeviationz
## 1                                         -0.9606
## 2                                         -0.9883
## 3                                         -0.9923
## 4                                         -0.5347
## 5                                         -0.4017
## 6                                         -0.7260
##   frequencybodygyroscopemeanx frequencybodygyroscopemeany
## 1                     -0.8502                     -0.9522
## 2                     -0.9762                     -0.9758
## 3                     -0.9864                     -0.9890
## 4                     -0.3390                     -0.1031
## 5                     -0.3524                     -0.0557
## 6                     -0.4926                     -0.3195
##   frequencybodygyroscopemeanz frequencybodygyroscopestandarddeviationx
## 1                    -0.90930                                  -0.8823
## 2                    -0.95132                                  -0.9779
## 3                    -0.98077                                  -0.9875
## 4                    -0.25594                                  -0.5167
## 5                    -0.03187                                  -0.4954
## 6                    -0.45360                                  -0.5659
##   frequencybodygyroscopestandarddeviationy
## 1                                 -0.95123
## 2                                 -0.96235
## 3                                 -0.98711
## 4                                 -0.03351
## 5                                 -0.18141
## 6                                  0.15154
##   frequencybodygyroscopestandarddeviationz
## 1                                  -0.9166
## 2                                  -0.9439
## 3                                  -0.9823
## 4                                  -0.4366
## 5                                  -0.2384
## 6                                  -0.5717
##   frequencybodyaccelerationmagnitudemean
## 1                               -0.86177
## 2                               -0.94778
## 3                               -0.98536
## 4                               -0.12862
## 5                                0.09658
## 6                               -0.35240
##   frequencybodyaccelerationmagnitudestandarddeviation
## 1                                             -0.7983
## 2                                             -0.9284
## 3                                             -0.9823
## 4                                             -0.3980
## 5                                             -0.1865
## 6                                             -0.4163
##   frequencybodybodyaccelerationjerkmagnitudemean
## 1                                       -0.93330
## 2                                       -0.98526
## 3                                       -0.99254
## 4                                       -0.05712
## 5                                        0.02622
## 6                                       -0.44265
##   frequencybodybodyaccelerationjerkmagnitudestandarddeviation
## 1                                                     -0.9218
## 2                                                     -0.9816
## 3                                                     -0.9925
## 4                                                     -0.1035
## 5                                                     -0.1041
## 6                                                     -0.5331
##   frequencybodybodygyroscopemagnitudemean
## 1                                 -0.8622
## 2                                 -0.9584
## 3                                 -0.9846
## 4                                 -0.1993
## 5                                 -0.1857
## 6                                 -0.3260
##   frequencybodybodygyroscopemagnitudestandarddeviation
## 1                                              -0.8243
## 2                                              -0.9322
## 3                                              -0.9785
## 4                                              -0.3210
## 5                                              -0.3984
## 6                                              -0.1830
##   frequencybodybodygyroscopejerkmagnitudemean
## 1                                     -0.9424
## 2                                     -0.9898
## 3                                     -0.9948
## 4                                     -0.3193
## 5                                     -0.2820
## 6                                     -0.6347
##   frequencybodybodygyroscopejerkmagnitudestandarddeviation
## 1                                                  -0.9327
## 2                                                  -0.9870
## 3                                                  -0.9947
## 4                                                  -0.3816
## 5                                                  -0.3919
## 6                                                  -0.6939
```


### Here is a plot of the first variable timebodyaccelerationmeanx from the tidy dataset

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5.png) 


