## Coursera - August 2014 - Getting and Cleaning Data - Course Project

## -----------------------------------------------------------------------------
## Step 1 - set my working directory to where my local github files are stored
## -----------------------------------------------------------------------------

setwd("D:/Rdata/GettingandCleaningData/Courseproject/submittogithub")

## -----------------------------------------------------------------------------
## Step 2 - Read all data files into R
## -----------------------------------------------------------------------------

## Read Main Test and Training datasets into R
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", quote="\"")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", quote="\"")

## Read the labels
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", quote="\"")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", quote="\"")

##  Read identifier of the subject who carried out the experiment
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", quote="\"")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", quote="\"")

## Read the features from features.txt into the features dataframe
features <- read.table("./UCI HAR Dataset/features.txt", quote="\"", stringsAsFactor=F)

## convert all values in the features dataframe to lower case
features <- data.frame(lapply(features, function(v) {if (is.character(v)) return(tolower(v))else return(v)}))

## Read in activity labels
activity.names <- read.table("./UCI HAR Dataset/activity_labels.txt")

## -----------------------------------------------------------------------------
## Step 3 - Merge the training and the test datasets to create one data set
##          This completes task 1 of the assignment
## -----------------------------------------------------------------------------

## row bind the training and test datasets to form dtDataset
dtDataset <- rbind(X_train, X_test)

## row bind the subject datasets from training and test to form dtSubject
dtSubject <- rbind(subject_train, subject_test)

## row bind the label datasets to form dtLabel
dtLabel <- rbind(y_train, y_test)

## -----------------------------------------------------------------------------
## Step 4 - Appropriately labels the data set with descriptive column names for 
##          features data frame
## -----------------------------------------------------------------------------

colnames(features) <- c("featuresnum","featuresnames")

## -----------------------------------------------------------------------------
## Step 5 - Extracts only the measurements on the mean and standard deviation 
##          for each measurement
##          This completes task 2 of the assignment
## -----------------------------------------------------------------------------

## subset features dataframe to filter down to rows containing only mean and std
features <- subset(features, grepl("mean\\(\\)|std\\(\\)", features$featuresnames))

## paste V to the featurenum column
features$featuresnum <- paste0("V", features$featuresnum)


## -----------------------------------------------------------------------------
## Step 6 - Extract mean and std measurements from the main dataset
## -----------------------------------------------------------------------------

dtDataset <- dtDataset[, features$featuresnum]

## -----------------------------------------------------------------------------
## Step 7 - remove dashes and brackets etc from dataframe to appropriately label  
##          data set with descriptive column names - this will make the column 
##          names later look much cleaner and more descriptive - see 
##          features_info.txt for more info
##          This completes task 3 of the assignment
## -----------------------------------------------------------------------------
tmp <- features[c(2)]
tmp <- gsub("-", "", tmp$featuresnames)
tmp <- gsub("\\()|\\]", "", tmp)
tmp <- gsub("tbody", "timebody", tmp)
tmp <- gsub("tgravity", "timegravity", tmp)
tmp <- gsub("fbody", "frequencybody", tmp)
tmp <- gsub("fgravity", "frequencygravity", tmp)
tmp <- gsub("std", "standarddeviation", tmp)
tmp <- gsub("acc", "acceleration", tmp)
tmp <- gsub("gyro", "gyroscope", tmp)
tmp <- gsub("mag", "magnitude", tmp)
features$featuresnames <- tmp

## -----------------------------------------------------------------------------
## Step 8 - Appropriately labels the data set with descriptive variable names
##          This completes task 4 of the assignment
## -----------------------------------------------------------------------------

colnames(dtDataset) <- features$featuresname

## Adding subject id to each row
dtDataset$subject <- cbind(dtDataset,dtSubject)$V1

## Adding label id to each row
dtDataset$label <- cbind(dtDataset,dtLabel)$V1


## Merge the dataset and activities names to get the lable names
dtDataset <- merge(dtDataset, activity.names, by.x="label", by.y="V1", all=T)
                   
## Remove label field from dataframe
dtDataset$label <- NULL

## Remove label field from dataframe
colnames(dtDataset)[68] <- "activityname"

## Sort the dataset by subject id and then by activity name
## This is needed to make the tidy set cleaner and more organized
dtDataset <- dtDataset[order(dtDataset$subject, dtDataset$activityname), ]

              
## -----------------------------------------------------------------------------
## Step 9 - Creates a second, independent tidy data set with the average of 
## each variable for each activity and each subject.
#  Create Tidy Dataset - this completes task 5 of the assignment
## -----------------------------------------------------------------------------

## covert from factor to character
dtDataset$activityname <- as.character(dtDataset$activityname)


## Group the observations by subject and activity 
## There are 180 groups 30 subjects and 6 activities
dtDataset$SubjectActivity <- paste(dtDataset$subject, dtDataset$activityname)
dtDataset$SubjectActivity <- as.factor(dtDataset$SubjectActivity)


## Create the final tidy data frame
dtTidyset=data.frame(1:180)

## Add to the data frame and calculate the mean by group
for (i in 1:66) {
    dtTidyset[, colnames(dtDataset)[i]] <- tapply(dtDataset[, i], dtDataset$SubjectActivity, mean)
}

## Rename each row to corresponding proper group name
rownames(dtTidyset) <- unique(dtDataset$SubjectActivity)

## Remove an unnecessary column
dtTidyset[, 1] <- NULL


## Add Column to the left of dataframe to help users understand the groups when 
## export to tiby.txt later
dtnameset=data.frame(1:180)
dtnameset$SubjectActivity <- unique(dtDataset$SubjectActivity)
dtnameset[, 1] <- NULL
dtTidyset <- cbind(dtnameset,dtTidyset)

## Export the tidy dataset
write.table(dtTidyset, file="tidy.txt", sep="\t", row.name=FALSE)
