GetData
=======

Getting and Cleaning Data Course project

This repo contains an R file - run_analysis.R - aiming to produce a tidy dataset using the ‘Human Activity Recognition Using Smartphones Data Set’ as an input raw dataset. The raw data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the [site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) where the data was obtained:
Briefly, the experiments have been carried out with a group of 30 volunteers. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

In the analysis I used and loaded the following files: 
* subject_train.txt
* X_train.txt
* Y_train.txt
* subject_test.txt
* X_test.txt
* Y_test.txt
* activity_labels.txt
* features.txt

It is assumed that the required files are unzipped in the folder of ‘UCI HAR Dataset' and placed in the working directory of the R session.
The R script does the following:
 1. Merges the training and the test sets to create one data set.
 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
 3. Uses descriptive activity names to name the activities in the data set
 4. Appropriately labels the data set with descriptive variable names. 
 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
