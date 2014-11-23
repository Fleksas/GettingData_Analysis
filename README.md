# Getting and Cleaning Data Coursework

## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we will be using the "Human Activity Recognition Using Smartphones Data Set" which is made available on
the course web site:

* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ">Human Activity Recognition</a> [60Mb]
* <b>Description</b>: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

## Courwork requirements

The goal is to prepare tidy data that can be used for later analysis. It required to submit: 

* A tidy data set derived from the original data source performing required transformations
* A link to a Github repository with your script for performing the analysis 
* A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md 

## Using the script

As the end result of the project a run_analysis.R script was created that procuded a new tidy data sets with the above-described requirements.

Instructions of how use the script:

<ol>
<li>Download "run_analysis.R" file and put it in your working directory </li>
<li> Open R Console (or RStudio) and run "source("run_analysis.R")" command </li>
<li> The script will automatically download the data set and unzip it in ./data directory </li>
<li> The data_tidy.txt with the new tidy dataset will be exported in your working direcotry </li>
</ol>

## Code Book

The CodeBook.md file explains the transformations performed and the resulting data and variables.

====================
