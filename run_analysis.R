# Getting and Cleaning Data
# Course Project

# Assume that the all data are unzipped in the folder of 'UCI HAR Dataset'
# and placed in the working directory


Subject.train <- read.table("UCI HAR Dataset/train/subject_train.txt",header=F)
Xtrain <- read.table("UCI HAR Dataset/train/X_train.txt",header=F)
Ytrain <- read.table("UCI HAR Dataset/train/Y_train.txt",header=F)
train <- cbind(Xtrain,Subject.train,Ytrain)

Subject.test <- read.table("UCI HAR Dataset/test/subject_test.txt",header=F)
Xtest <- read.table("UCI HAR Dataset/test/X_test.txt",header=F)
Ytest <- read.table("UCI HAR Dataset/test/Y_test.txt",header=F)
test <- cbind(Xtest,Subject.test,Ytest)

harus.total <- rbind(train,test) # Merged train and test sets

activity <- read.table("UCI HAR Dataset/activity_labels.txt",header=F)
features <- read.table("UCI HAR Dataset/features.txt",header=F) # These are the variable names  

# Extracting the measurements on the mean and standard deviation for measurements
# The feasible col numbers are defined first, then the subsetting is done.
feature.mean <- features[grep("mean",features[,2]),1]
feature.sd <- features[grep("std",features[,2]),1]
mean.sd <- sort(c(feature.mean,feature.sd))
X <- length(harus.total)
harus0 <- harus.total[,c(mean.sd,X-1,X)] # 79 variables for means and sds + subject + activity code


# Appropriately labels the data set with descriptive variable names.
# Removing non-alphanumerical characters.
variable.names <- as.character(features[mean.sd,2])
variable.names <- gsub("()","",variable.names,fixed=T)
variable.names <- gsub("-","",variable.names,fixed=T)
variable.names <- gsub("mean","Mean",variable.names)
variable.names <- gsub("std","Sd",variable.names)
variable.names <- sub("f","freq",variable.names)

names(harus0) <- c(variable.names,"ID","activitycode")


# activity names
harus <- merge(harus0,activity,by.x="activitycode",by.y="V1")
names(harus)[82] <- "activity"

# 'activitycode' is not necessary anymore
harus <- harus[,-1]

# independent tidy data set with the average of each variable for each activity and each subject
harusmean <- data.frame()
for (i in 1:79){
    harusmean0 <- data.frame(ID=1:30,feature=names(harus)[i],
                             tapply(harus[,i],harus[,80:81],mean))
    harusmean <- rbind(harusmean,harusmean0)
}

# Save the new dataset
write.csv(harusmean,"harusmean.txt",row.names=F)

