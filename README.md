activity_labels - mathes activity names wirth their counts in y

col - mesurement names

xte - test mesurements 

yte - test activity names

xte - train mesurements 

yte - train actyvity names

Than I bind x and y (activities with mesurements) into test ant train variables (cbind commangs)

Than I bind test and train sets together (rbind command)

I found mean ang std in names of collumns (grep command) and put that collumns in "small" table

Than I merge small table with activity names and change numeric names of activities to true names

Finaly, I create "tidy" table from "small" table and mean of the rows and collumns and wright it into "sub_tidy.txt" file with write.table command
