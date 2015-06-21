The tidy data set that this script generates has 180 rows and 68 columns.
Column 1 corresponds to the subject numbers: 1-30, Column 2 corresponds to the different activities. The remaining columns contain mean or standard deviation information for the different measurements.

Part 1:
Files are read into RStudio using the read.table() function.

Part 2:
The data from the different files is bound together.
Test data is bound together using the cbind() function, with the arguments corresponding to the files 'subject_test', 'Y_test', and 'X_test' - in this order so that the subject and activity data are the first two columns.
Train data is bound together in the same way.
Test data and train data are bound together using the rbind() function, with testdata coming first in the list of arguments.

Part 3:
The columns that contained information about the mean or standard deviation of a variable, as well as the subject and activity information, are extracted using the subset() function. I did not include columns titled '_____-meanFreq()' or 'angle(__, ______)', although they technically have the word 'mean' in their name. This yields a total of 68 columns.

Part 4:
Variable names are read in from the 'Variable Names' file (found inside UCI HAR Data - this was a file I created separately) and set as the column names for the subset data.

Part 5:
The numbers in the activity column are replaced with descriptive activity names.

Part 6:
Averages are calculated for each subject and activity. This means that for every column there are 6 averages calculated for each of the 30 participants, one for each of the 6 activities. This yields a total of 180 rows. Total data set size: 180 x 68.



Activity names came from the 'activity_labels' file; the numbers from 'Y_test' and 'Y_train' were replaced with the corresponding activity name. 


Variable names are listed below.
Each begins with either 'Mean' or 'Std', indicating whether the column contains data about averages or standard deviations. 
The next portion of the names is either 'Time' or 'Frequency', indicating whether the data contained in the column was originally designated with a 't' or an 'f'.
The next portion is the descriptor of what is being averaged or whose standard deviation is being calculated.
If the value is only for one axis (X, Y, or Z), this is indicated in parentheses at the end.
These names are saved in the file 'Variable Names.txt'.
The variables:

Subject
Activity
MeanTimeBodyAcceleration(X)
MeanTimeBodyAcceleration(Y)
MeanTimeBodyAcceleration(Z)
StdTimeBodyAcceleration(X)
StdTimeBodyAcceleration(Y)
StdTimeBodyAcceleration(Z)
MeanTimeGravityAcceleration(X)
MeanTimeGravityAcceleration(Y)
MeanTimeGravityAcceleration(Z)
StdTimeGravityAcceleration(X)
StdTimeGravityAcceleration(Y)
StdTimeGravityAcceleration(Z)
MeanTimeBodyAccelerationJerk(X)
MeanTimeBodyAccelerationJerk(Y)
MeanTimeBodyAccelerationJerk(Z)
StdTimeBodyAccelerationJerk(X)
StdTimeBodyAccelerationJerk(Y)
StdTimeBodyAccelerationJerk(Z)
MeanTimeBodyGyro(X)
MeanTimeBodyGyro(Y)
MeanTimeBodyGyro(Z)
StdTimeBodyGyro(X)
StdTimeBodyGyro(Y)
StdTimeBodyGyro(Z)
MeanTimeBodyGyroJerk(X)
MeanTimeBodyGyroJerk(Y)
MeanTimeBodyGyroJerk(Z)
StdTimeBodyGyroJerk(X)
StdTimeBodyGyroJerk(Y)
StdTimeBodyGyroJerk(Z)
MeanTimeBodyAccelerationMagnitude
StdTimeBodyAccelerationMagnitude
MeanTimeGravityAccelerationMagnitude
StdTimeGravityAccelerationMagnitude
MeanTimeBodyAccelerationJerkMagnitude
StdTimeBodyAccelerationJerkMagnitude
MeanTimeBodyGyroMagnitude
StdTimeBodyGyroMagnitude
MeanTimeBodyGyroJerkMagnitude
StdTimeBodyGyroJerkMagnitude
MeanFrequencyBodyAcceleration(X)
MeanFrequencyBodyAcceleration(Y)
MeanFrequencyBodyAcceleration(Z)
StdFrequencyBodyAcceleration(X)
StdFrequencyBodyAcceleration(Y)
StdFrequencyBodyAcceleration(Z)
MeanFrequencyBodyAccelerationJerk(X)
MeanFrequencyBodyAccelerationJerk(Y)
MeanFrequencyBodyAccelerationJerk(Z)
StdFrequencyBodyAccelerationJerk(X)
StdFrequencyBodyAccelerationJerk(Y)
StdFrequencyBodyAccelerationJerk(Z)
MeanFrequencyBodyGyro(X)
MeanFrequencyBodyGyro(Y)
MeanFrequencyBodyGyro(Z)
StdFrequencyBodyGyro(X)
StdFrequencyBodyGyro(Y)
StdFrequencyBodyGyro(Z)
MeanFrequencyBodyAccelerationMagnitude
StdFrequencyBodyAccelerationMagnitude
MeanFrequencyBodyBodyAccelerationJerkMagnitude
StdFrequencyBodyBodyAccelerationJerkMagnitude
MeanFrequencyBodyBodyGyroMagnitude
StdFrequencyBodyBodyGyroMagnitude
MeanFrequencyBodyBodyGyroJerkMagnitude
StdFrequencyBodyBodyGyroJerkMagnitude
