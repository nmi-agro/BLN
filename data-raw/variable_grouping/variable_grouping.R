# make a table with soil functions and ecosystem services, how they are grouped
# and with which functions they are calculated
library(data.table)

bln_variable_grouping <- fread('data-raw/variable_grouping/variable_grouping.csv')
usethis::use_data(bln_variable_grouping, overwrite = TRUE)
fwrite(bln_variable_grouping, 'data-raw/variable_grouping/variable_grouping.csv')
