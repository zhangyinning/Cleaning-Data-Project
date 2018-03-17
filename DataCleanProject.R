# read the test datasets
X_test <- read.table("Dataset/test/X_test.txt", header = FALSE, sep = "")
subject_test <- read.table("Dataset/test/subject_test.txt", header = FALSE, sep = "")
label_test <- read.table("Dataset/test/y_test.txt", header = FALSE, sep = "")
testData <- cbind(subject_test, label_test, X_test)

# read the training datasets
X_train <- read.table("Dataset/train/X_train.txt", header = FALSE, sep = "")
subject_train <- read.table("Dataset/train/subject_train.txt", header = FALSE, sep = "")
label_train <- read.table("Dataset/train/y_train.txt", header = FALSE, sep = "")
trainData <- cbind(subject_train, label_train, X_train)

# merge the train and test dataset
mergedData <- rbind(testData, trainData)

# The first two columns are the subject and labels, and the following six columns are the means and stand deviations for the first measurement, Triaxial body acceleration(tBodyAcc).
selectedColsData <- mergedData[, 1:8]

# Check the data type of the label column. It returns "integer".
typeof(selectedColsData$V1.1)

# replace the numeric labels with descriptive activity names
selectedColsData$V1.1[selectedColsData$V1.1 == 1] <- "walking"
selectedColsData$V1.1[selectedColsData$V1.1 == 2] <- "upstairs"
selectedColsData$V1.1[selectedColsData$V1.1 == 3] <- "downstairs"
selectedColsData$V1.1[selectedColsData$V1.1 == 4] <- "sitting"
selectedColsData$V1.1[selectedColsData$V1.1 == 5] <- "standing"
selectedColsData$V1.1[selectedColsData$V1.1 == 6] <- "laying"

# Name the variables.
library(dplyr)
renamedData <- rename(selectedColsData, subjects = V1, activities = V1.1, tbodyAccMeanX = V1.2, tbodyAccMeanY = V2, tbodyAccMeanZ = V3, tbodyAccStdX = V4,  tbodyAccStdY = V5, tbodyAccStdZ = V6)

# Summarize the data and create a second independent dataset
summarizedData <- renamedData %>%
  group_by(subjects, activities) %>%
  summarize(tbodyAccMeanX = mean(tbodyAccMeanX), tbodyAccMeanY = mean(tbodyAccMeanY), tbodyAccMeanZ = mean(tbodyAccMeanZ), tbodyAccStdX = mean(tbodyAccStdX), tbodyAccStdY = mean(tbodyAccStdY), tbodyAccStdZ = mean(tbodyAccStdZ))

# Output the data to a text file
write.table(summarizedData, file = "SummarizedData.txt", row.names = FALSE)

