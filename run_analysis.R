features <- read.table('features.txt', header=FALSE, sep="", colClasses = "character", strip.white=TRUE)
xTrain <- read.delim('train/X_train.txt', header=FALSE, sep="")
xTest <- read.delim('test/X_test.txt', header=FALSE, sep="")
x <- rbind(xTrain, xTest)
colnames(x) <- t(features['V2'])
xTrim <- x[, which(grepl('.*(mean|std)\\(\\).*',names(x)))]

subjTrain <- read.delim('train/subject_train.txt', header=FALSE, sep="")
subjTest <- read.delim('test/subject_test.txt', header=FALSE, sep="")
subj <- rbind(subjTrain, subjTest)
colnames(subj) <- c('Subject')

yTrain <- read.delim('train/Y_train.txt', header=FALSE, sep="")
yTest <- read.delim('test/Y_test.txt', header=FALSE, sep="")

actLabels <- read.delim('activity_labels.txt', header=FALSE, sep="")
y <- merge(rbind(yTrain, yTest), actLabels)
y <- y['V2']
colnames(y) <- c('Activity')

master <- cbind(xTrim, subj, y)

means <- master %>%
  group_by(Subject, Activity) %>%
  summarise_each(funs(mean), 1:66)