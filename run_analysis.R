
setwd("UCI HAR Dataset/test")



Xtest <- read.table("X_test.txt")
Ytest <- read.table("Y_test.txt")
subjecttest <- read.table("subject_test.txt")
setwd("..")
setwd("train")
Xtrain <- read.table("X_train.txt")
Ytrain <- read.table("Y_train.txt")
subjecttrain <- read.table("subject_train.txt")

testdata <- cbind(subjecttest, Ytest, Xtest)
traindata <- cbind(subjecttrain, Ytrain, Xtrain)

totaldata <- rbind(testdata, traindata)

datasub1 <- totaldata[, c(1:8, 43:48, 83:88, 123:128, 163:168, 203:204, 216:217, 229:230, 242:243, 255:256, 268:273, 347:352, 426:431, 505:506, 518:519, 531:532, 544:545)]
setwd("..")
variables <- read.table("Variable Names.txt")
colnames(datasub1) <- variables[, 1]

datasub1$Activity[datasub1$Activity == 5] <- "Standing"
datasub1$Activity[datasub1$Activity == 1] <- "Walking"
datasub1$Activity[datasub1$Activity == 2] <- "WalkingUpstairs"
datasub1$Activity[datasub1$Activity == 3] <- "WalkingDownstairs"
datasub1$Activity[datasub1$Activity == 4] <- "Sitting"
datasub1$Activity[datasub1$Activity == 6] <- "Laying"
datasub3 <- aggregate(datasub1[, 3:68], list(Subject = datasub1$Subject, Activity = datasub1$Activity), mean)

write.table(datasub3, "tidydata.txt", sep="\t", row.names=FALSE, col.names=TRUE)
