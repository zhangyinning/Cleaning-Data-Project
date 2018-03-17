# Description of the Study
The original data source of this study is downloaded from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. This data set describes the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
In this study, I combined the data of subjects, activities, records into one dataset and further merged the training and test data. I extracted 6 columns of the means and standard deviations of the first measurement, Triaxial body acceleration(tBodyAcc). I calculated the average of each of the variables based on each subject and each activity.  


# Data Dictionary
1. Variable: Subjects
Type: integer
Value: 0-30
Description: Identifiers of the 30 subjects who participated in the experiment.

2. Variable: Activities
Type: characters
Value: walking; upstairs; downstairs; sitting; standing; laying
Description: Six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) performed by subjects wearing a smartphone (Samsung Galaxy S II) on the waist.

3. Variable: tbodyAccMeanX
Type: double
Value: Numbers normalized and bounded within [-1,1]
Description: The mean values of body acceleration in the direction of x axis. This is the average grouped by each subject and each activity. 

4. Variable: tbodyAccMeanY
Type: double
Value: Numbers normalized and bounded within [-1,1]
Description: The mean values of body acceleration in the direction of y axis. This is the average grouped by each subject and each activity. 

5. Variable: tbodyAccMeanZ
Type: double
Value: Numbers normalized and bounded within [-1,1]
Description: The mean values of body acceleration in the direction of z axis. This is the average grouped by each subject and each activity. 

6. Variable: tbodyAccStdX
Type: double
Value: Numbers normalized and bounded within [-1,1]
Description: The standard deviation values of body acceleration in the direction of x axis. This is the average grouped by each subject and each activity. 

7. Variable: tbodyAccStdY
Type: double
Value: Numbers normalized and bounded within [-1,1]
Description: The standard deviation values of body acceleration in the direction of y axis. This is the average of the Std values grouped by each subject and each activity. 

8. Variable: tbodyAccStdZ
Type: double
Value: Numbers normalized and bounded within [-1,1]
Description: The standard deviation values of body acceleration in the direction of z axis. This is the average of the Std values grouped by each subject and each activity. 
