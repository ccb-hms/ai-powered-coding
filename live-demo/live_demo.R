# -----------------------------------
# AI-Powered Vibe Coding Live Demo
# -----------------------------------


# __________________________
# Section 1: Data Ingestion
# __________________________

# (DEMO 1: We will use Ghost Text to write the code below)
# (Type the comment from the README here and press Enter)




# _______________________________________
# Section 2: Visualization (Refactoring)
# _______________________________________

# (DEMO 2: Use Inline Chat (Ctrl+I) to convert this to ggplot2)
# (DEMO 3: Use the code below to test Auto-Search vs explicit ggplot2,

df <- read.csv("data/biomarker_dummy.csv")
plot(df$age, df$biomarker_score, 
     col = as.factor(df$treatment_group), 
     main = "Age vs Biomarker",
     xlab = "Age", ylab = "Score", pch=19)


# ____________________________________
# Section 3: Legacy Code Explanation
# ____________________________________

# (DEMO 3: Highlight the regex string and use /explain)
# (DEMO 4: Highlight the whole function below and use /doc)

extractPatientCohort <- function(file_name) {
  matches <- regmatches(file_name, 
    regexpr("(?<=_)[A-Z]{2,3}(?=[0-9]{4})", file_name, perl=TRUE))
  return(matches)
}


# _____________________________________
# Section 4: Data Cleaning (Debugging)
# _____________________________________

# (DEMO 5: Run this to see the error, then use /fix on the broken pipe)

library(dplyr)

clean_data <- read.csv("data/biomarker_dummy.csv") %>%
  filter(age > 18) 
  select(patient_id, treatment_group, biomarker_score, response_status)


# _______________________________________
# Section 5: Biomarker Summary + Boxplot
# _______________________________________

# (DEMO 6: use chat to find function in workspace)
# (DEMO 7: Highlight the whole function below and use /doc)
# (DEMOS 6, 8, & 9: Use the code below to test Auto-Search vs explicit #utils.R, 
# auto-generate Git Commits

