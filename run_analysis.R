wd1<-getwd()
setwd("C://Documents and Settings//Andrey Romanov//Мои документы//R")
wd2<-getwd()
setwd(".//UCI HAR Dataset")
col<-read.table("features.txt")
col<-col$V2
activity_labels<-read.table("activity_labels.txt")
wd3<-getwd()
setwd(".//test")
subject_test<-read.table("subject_test.txt")
xte<-read.table("X_test.txt")
colnames(xte)<-col
yte<-read.table("y_test.txt")
setwd(wd3)
setwd(".//train")
subject_test<-read.table("subject_train.txt")
xtr<-read.table("X_train.txt")
colnames(xtr)<-col
ytr<-read.table("y_train.txt")
test<-cbind(yte, xte)
train<-cbind(ytr, xtr)
colnames(test)[1]<-"Y"
colnames(train)[1]<-"Y"
total<-rbind(test, train)
m<-grep("mean", colnames(total))
s<-grep("std", colnames(total))
small<-cbind(total[,1],total[,m], total[,s])
colnames(small)[1]<-"Activity"
colnames(activity_labels)[1]<-"Activity"
small<-merge(activity_labels, small)
small<-small[,2:81]
colnames(small)[1]<-"Activity"
tidy<-cbind(small, rowMeans(small[,2:80]))
tidy<-rbind(tidy, colMeans(tidy[,2:81]))
c1<-dim(tidy)[1]
c2<-dim(tidy)[2]
colnames(tidy)[c2]<-"mean"
rownames(tidy)[c1]<-"mean"
setwd(wd1)
write.table(tidy, "sub_tidy.txt", row.name=FALSE)

