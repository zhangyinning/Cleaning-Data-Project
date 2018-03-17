# Description of the Study
The purpose of this study is to clean the original data that is downloaded from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. This original data set describes the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. However, the data of subjects, activity lables, and performance records are saved in different files, and the training data and test data are also separated.

So, in this study, the following steps were performed to get a readable and summarized dataset:
1. Combined the data of subjects, activities, records into one dataset
2. Merged the training and test data. 
3. Extracted 6 columns of the means and standard deviations of the first measurement, Triaxial body acceleration(tBodyAcc). 
4. Calculated the average of each of the variables based on each subject and each activity. 

# List of files
The dataset includes the following files:
* README.txt
* CodeBook.text (Description of the variables)
* SummarizedData.txt (Final data)
* DataCleanProject.R (R script)
