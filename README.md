# Getting and Cleaning Data Coursework

## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we will be using the "Human Activity Recognition Using Smartphones Data Set" which is made available on
the course web site:

* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ">Human Activity Recognition</a> [60Mb]
* <b>Description</b>: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

For each record in the dataset it is provided: 

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
* Triaxial Angular velocity from the gyroscope.  
* A 561-feature vector with time and frequency domain variables.  
* Its activity label.  
* An identifier of the subject who carried out the experiment. 

## Courwork requirements

The goal is to prepare tidy data that can be used for later analysis. It required to submit: 

* A tidy data set
* A link to a Github repository with your script for performing the analysis 
* A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md 

You should create one R script called run_analysis.R that does the following: 

<ol>
<li>Merges the training and the test sets to create one data set. </li>
<li>Extracts only the measurements on the mean and standard deviation for each measurement.  </li>
<li>Uses descriptive activity names to name the activities in the data set. </li>
<li>Appropriately labels the data set with descriptive variable names.  </li>
<li>Appropriately labels the data set with descriptive variable names.   </li>
<li>From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. </li>
</ol>

## Using the script

As the end result of the project a run_analysis.R script was created that procuded a new tidy data sets with the above-described requirements.

Instructions of how use the script:

====================
