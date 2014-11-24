# CodeBook

This document provides more information about the orginal data set, its variables and all the transofrmations performed to get a new tidy data set.

## Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

For each record it is provided:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
* Triaxial Angular velocity from the gyroscope.  
* A 561-feature vector with time and frequency domain variables.  
* Its activity label.  
* An identifier of the subject who carried out the experiment. 

## Data Set Files

* 'README.txt'
* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.
* 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
 
## Transformations

All transformations performed to get a new tidy data set are the following:

<ol>
<li>Train and test data were merge together to create a single dataset</li>
<li>Only the measurements on the mean and standard deviation were extracted from that dataset</li>
<li>Descriptive activity names to name the activities in the data set were used (WALKING, SITTING etc.) </li>
<li>Data set lebels were created to describe its variables ("subject","activity" etc.)  </li>
<li>A new independent tidy data set with the average of each variable for each activity and each subject was created  </li>
</ol>

## Variables

A new tidy data set include sebject ids (30 people in the experiment), actvities (WALKING, SITTING etc.) and measurments data (mean and standard deviation of each measurement). Measurements variables are the results of the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. Please read features_info.txt document of the orginal data set for more information.






