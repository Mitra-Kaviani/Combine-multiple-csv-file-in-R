#import library
library(data.table)

# make a List of  all csv files in directory
filenames <- list.files("CSV_Files", pattern="*.csv", full.names=TRUE)

# read and combine data frame by rows the write the combined file
data <- rbindlist(lapply(filenames,fread))
write.csv(list.DFs,"All_CSVs_rbind.csv", row.names = FALSE)

# combine data frame by columns and write the combined file
list.DFs <- lapply(filenames,fread)
write.csv(list.DFs,"All_CSVs_cbind.csv", row.names = FALSE)
