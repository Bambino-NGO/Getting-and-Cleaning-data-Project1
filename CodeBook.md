## Code Book for week 4 project Getting and Cleaning Data course 

This code book summarizes data, variables identifiers, measurements, activity labels  the resulting data fields in tidy.txt.

The raw data is divided into training and test data sets and our task is to merge and tidy the data

### Identifiers

	* subject - The ID of the test subject
	* activity - The types of activity performed during the measurement process

### Subject

	* Subject identifier is an integer that ranges from 1 to 30.

### Activity

	* It is an identifier of subjects activity, having string with 6 possible values

	* WALKING: During the test the subject was walking
	* WALKING_UPSTAIRS: During the test the subject was walking upstairs
	* WALKING_DOWNSTAIRS: During the test the subject was walking downstairs
	* SITTING: During the test the subject was sitting
	* STANDING: During the test the subject was standing
	* LAYING: During the test the subject was laying

## Measurements

    * tBodyAccMeanX
    * tBodyAccMeanY
    * tBodyAccMeanZ
    * tBodyAccStdX
    * tBodyAccStdY
    * tBodyAccStdZ
    * tGravityAccMeanX
    * tGravityAccMeanY
    * tGravityAccMeanZ
    * tGravityAccStdX
    * tGravityAccStdY
    * tGravityAccStdZ
    * tBodyAccJerkMeanX
    * tBodyAccJerkMeanY
    * tBodyAccJerkMeanZ
    * tBodyAccJerkStdX
    * tBodyAccJerkStdY
    * tBodyAccJerkStdZ
    * tBodyGyroMeanX
    * tBodyGyroMeanY
    * tBodyGyroMeanZ
    * tBodyGyroStdX
    * tBodyGyroStdY
    * tBodyGyroStdZ
    * tBodyGyroJerkMeanX
    * tBodyGyroJerkMeanY
    * tBodyGyroJerkMeanZ
    * tBodyGyroJerkStdX
    * tBodyGyroJerkStdY
    * tBodyGyroJerkStdZ
    * tBodyAccMagMean
    * tBodyAccMagStd
    * tGravityAccMagMean
    * tGravityAccMagStd
    * tBodyAccJerkMagMean
    * tBodyAccJerkMagStd
    * tBodyGyroMagMean
    * tBodyGyroMagStd
    * tBodyGyroJerkMagMean
    * tBodyGyroJerkMagStd
    * fBodyAccMeanX
    * fBodyAccMeanY
    * fBodyAccMeanZ
    * fBodyAccStdX
    * fBodyAccStdY
    * fBodyAccStdZ
    * fBodyAccMeanFreqX
    * fBodyAccMeanFreqY
    * fBodyAccMeanFreqZ
    * fBodyAccJerkMeanX
    * fBodyAccJerkMeanY
    * fBodyAccJerkMeanZ
    * fBodyAccJerkStdX
    * fBodyAccJerkStdY
    * fBodyAccJerkStdZ
    * fBodyAccJerkMeanFreqX
    * fBodyAccJerkMeanFreqY
    * fBodyAccJerkMeanFreqZ
    * fBodyGyroMeanX
    * fBodyGyroMeanY
    * fBodyGyroMeanZ
    * fBodyGyroStdX
    * fBodyGyroStdY
    * fBodyGyroStdZ
    * fBodyGyroMeanFreqX
    * fBodyGyroMeanFreqY
    * fBodyGyroMeanFreqZ
    * fBodyAccMagMean
    * fBodyAccMagStd
    * fBodyAccMagMeanFreq
    * fBodyBodyAccJerkMagMean
    * fBodyBodyAccJerkMagStd
    * fBodyBodyAccJerkMagMeanFreq
    * fBodyBodyGyroMagMean
    * fBodyBodyGyroMagStd
    * fBodyBodyGyroMagMeanFreq
    * fBodyBodyGyroJerkMagMean
    * fBodyBodyGyroJerkMagStd
    * fBodyBodyGyroJerkMagMeanFreq
