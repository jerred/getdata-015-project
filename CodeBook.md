# CodeBook

- features: Contains the list of features (column names) for the X train and test sets.  The contents are read as raw text to avoid unintended interpretation of the values.
- x: Contains the union of xTrain and xTest since they both share the same columns.  The feature names are then applied to x to provide meaningful column names to the data.
- xTrim: Contains a subset of the x data frame.  All features that do not contain the phrases "mean()" or "std()" have been dropped.
- subj: Contains the union of subjTrain and subjTest since they both have exactly one column, the subject.  This column name was explicitly added.
- y: Contains the union of yTrain and yTest since they both have exactly one column, the activity.  The numerical activity was translated into its actual label for easier interpretation, using the activity labels lookup table.  This table also had the column name "Activity" applied to it.
- master: Contains the entire data set.  The first set of columns are the mean and std columns of the x data set, the next column is the subject, and the final column is the activity label.
- means: Contains the mean of each feature for each distinct combination of Activity-Subject pair.
