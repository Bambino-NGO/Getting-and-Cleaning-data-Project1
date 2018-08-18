## Getting and Cleaning Data - Week 4 Course Project

This are the activities to be done in the course project for the Getting and Cleaning Data Coursera course. The run_analysis.R script does the following:

    * Check if the dataset already exists 
    * If the dataset does not exists, then Begin with downloading the dataset in the working directory
    * Then load the activity and feature info
    * Next step is to load both the training and test datasets
    * In the training and test datasets, retain columns that reflect mean or standard deviation of dataset
    * The activity and subject data for each dataset should then be loaded
    * Now merge activity and subject data with the corresponding columns in the dataset
    * Then Merge the training and test datasets
    * Activity and subject columns then needs to be converted into factors
    * Finally Create a tidy dataset that consists of the mean values of each variable for each subject and activity pair.

The final result is displayed in a file named as file tidy.txt.
