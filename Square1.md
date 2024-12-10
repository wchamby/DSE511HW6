install.packages("googlesheets4")
install.packages("dplyr")
install.packages("readr")

library(googlesheets4)
library(dplyr)
library(readr)

gs4_auth(email = "whamby2@vols.utk.edu")
sheet_url <- "https://docs.google.com/spreadsheets/d/1pXzH4KFw3CzzTJlI_HMbqlihTzCxhxR-a1V1eYV1gxo/edit?usp=sharing"
gs4_has_token()
sheet_names <- sheet_names(sheet_url)
print("Available Sheets:")
print(sheet_names)

dataframes <- lapply(sheet_names, function(sheet) {
data <- read_sheet(sheet_url, sheet = sheet)
data <- data %>% mutate(across(everything(), ~ ifelse(. == "", NA, .)))
data <- data %>% mutate(Season = sheet)
return(data)
})
print("Preview of a processed sheet with NAs:")
print(head(dataframes[[1]]))
print(head(dataframes[[1]]))
print(head(dataframes[[2]]))
print(head(dataframes[[3]]))
print(head(dataframes[[4]]))
print(head(dataframes[[5]]))

combined_data <- bind_rows(dataframes)
print("Combined Data Preview:")
print(head(combined_data))

write_csv(combined_data, "combined_nfl_kicking_data.csv")
print("Combined data saved to 'combined_nfl_kicking_data.csv'.")
View(combined_data)

library(googlesheets4)
sheet_url <- "https://docs.google.com/spreadsheets/d/1pXzH4KFw3CzzTJlI_HMbqlihTzCxhxR-a1V1eYV1gxo/edit?usp=sharing"
sheet_write(combined_data, ss = sheet_url, sheet = "Combined Data")
print("Combined data added to Google Sheets as a new sheet called 'Combined Data'.")
colSums(is.na(combined_data))
