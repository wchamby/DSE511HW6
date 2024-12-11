library(dplyr)
library(ggimage)
library(ggplot2)
library(googlesheets4)
library(readr)
library(rsvg)
library(tidyr)

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

sheet_url <- "https://docs.google.com/spreadsheets/d/1pXzH4KFw3CzzTJlI_HMbqlihTzCxhxR-a1V1eYV1gxo/edit?usp=sharing"
sheet_write(combined_data, ss = sheet_url, sheet = "Combined Data")
print("Combined data added to Google Sheets as a new sheet called 'Combined Data'.")
colSums(is.na(combined_data))

# Since I had issues with a previous R Studio session, I imported my starting code and it duplicated values in my Combined Data.
# I ran this code to clean up duplicates and now I am back to a good environment state
# These snippets fix my oopsies

# CSV File
combined_data <- read_csv("combined_nfl_kicking_data.csv")
print(head(combined_data))
combined_data <- combined_data %>%
  filter(Season != "Combined Data")
print(paste("Updated row count:", nrow(combined_data)))
write_csv(combined_data, "combined_nfl_kicking_data.csv")
print("Cleaned data saved to 'combined_nfl_kicking_data.csv'.")

# Local Table
combined_data <- combined_data %>%
  filter(Season != "Combined Data")
print(paste("Updated row count:", nrow(combined_data)))
print(head(combined_data))

# Bring back Local Table with new session
combined_data <- read_csv("combined_nfl_kicking_data.csv")
print(head(combined_data))
View(combined_data)

# Google Sheets
sheet_url <- "https://docs.google.com/spreadsheets/d/1pXzH4KFw3CzzTJlI_HMbqlihTzCxhxR-a1V1eYV1gxo/edit?usp=sharing"
sheet_write(combined_data, ss = sheet_url, sheet = "Combined Data")
print("Corrected data without 'Combined Data' rows updated in Google Sheets.")

# Forgot some teams changed their name and/or moved locations
combined_data <- combined_data %>%
  mutate(Tm = case_when(
    Tm == "Washington Redskins" ~ "Washington Commanders",
    Tm == "Washington Football Team" ~ "Washington Commanders",
    Tm == "Oakland Raiders" ~ "Las Vegas Raiders",
    TRUE ~ Tm
  ))
print("Updated Team Names:")
print(unique(combined_data$Tm))

write_csv(combined_data, "combined_nfl_kicking_data.csv")

sheet_url <- "https://docs.google.com/spreadsheets/d/1pXzH4KFw3CzzTJlI_HMbqlihTzCxhxR-a1V1eYV1gxo/edit?usp=sharing"
sheet_write(combined_data, ss = sheet_url, sheet = "Combined Data")

# Added Playoff Teams
playoff_teams <- read_csv("playoff_teams.csv")
print(head(playoff_teams))

combined_data <- combined_data %>%
  left_join(playoff_teams, by = c("Tm", "Season"))
print(head(combined_data))
print(table(combined_data$Playoff))
View(combined_data)

write_csv(combined_data, "combined_nfl_kicking_data_with_playoff_info.csv")

sheet_url <- "https://docs.google.com/spreadsheets/d/1pXzH4KFw3CzzTJlI_HMbqlihTzCxhxR-a1V1eYV1gxo/edit?usp=sharing"
sheet_write(combined_data, ss = sheet_url, sheet = "Combined Data")
print("Google Sheet updated with playoff information in 'Combined Data' sheet.")
