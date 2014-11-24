# Getting and Cleaning Data Coursework

## Introduction

This courswork uses data from
the <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we will be using the "Human Activity Recognition Using Smartphones Data Set" which is made available on
the course web site:

* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ">Human Activity Recognition</a> [60Mb]
* <b>Description</b>: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

## Courwork results

The goal of the coursework was to prepare a tidy data that can be used for later analysis. The results include:

* A tidy data set derived from the original data source performing transformations
* A link to a Github repository with the script for performing the analysis 
* A code book that describes the variables, the data, and any transformations called CodeBook.md 

## run_analysis.R script

As main result of the project a run_analysis.R script was created that proces a new tidy data set.

Instructions of how to use the script:

<ol>
<li>Download the "run_analysis.R" file and save it in your working directory </li>
<li> Open R Console (or RStudio) and run "source("run_analysis.R")" command </li>
<li> The script will automatically download the data set in  a./data directory </li>
<li> The data_tidy.txt with the new tidy data set will be exported in your working direcotry </li>
</ol>

====================
