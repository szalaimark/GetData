Codebook
=======

Codebook for the tidy dataset of harusmean.txt (UPdated on 24-09-2014 to correct some typos. The variables are beginning with t or freq, as t can be considered as a common abbreviation of 'time')

The dataset contains **average** values of certain **features** (see below) for each of 30 volunteers performed different activities wearing a smartphone (Samsung Galaxy S II) on the waist. A full description of the original data is available at the [site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) where the raw data was obtained.

**ID** is the identifier of the volunteer performing the activities.

The column names of **WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING** are the studied activities.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (features beginning with **tBodyAcc** and **tGravityAcc**) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (**tBodyAccJerk…** and **tBodyGyroJerk…**). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (like features started with **tBodyAccMag**). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing features like **freqBodyAcc…** .

These signals were used to estimate variables of the feature vector for each pattern: **'XYZ'** is used to denote 3-axial signals in the **X**, **Y** and **Z** directions.

Then their mean and standard deviation were calculated and coded as **Mean** or **Sd** in the names.
