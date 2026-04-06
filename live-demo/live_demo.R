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
# (DEMO 3: Ctrl+I, send selection to chat, ..., restore checkpoint)

df <- read.csv("data/biomarker_dummy.csv")
plot(df$age, df$biomarker_score,
     col = as.factor(df$treatment_group),
     main = "Age vs Biomarker",
     xlab = "Age", ylab = "Score", pch=19)


# ____________________________________
# Section 3: Legacy Code Explanation
# ____________________________________

# (DEMO 4: Highlight the regex string and type "/explain")
# (DEMO 5: Highlight the whole function below and type "add docstring")

extractPatientCohort <- function(file_name) {
  matches <- regmatches(file_name, 
    regexpr("(?<=_)[A-Z]{2,3}(?=[0-9]{4})", file_name, perl=TRUE))
  return(matches)
}


# _____________________________________
# Section 4: Data Cleaning (Debugging)
# _____________________________________

# (DEMO 6: Run this to see the error, then use /fix on the broken pipe)

library(dplyr)

clean_data <- read.csv("data/biomarker_dummy.csv") %>%
  filter(age > 18) 
  select(patient_id, treatment_group, biomarker_score, response_status)


# _______________________________________
# Section 5: Biomarker Summary + Boxplot
# _______________________________________

# (DEMO 7: use chat to find function in workspace)
# (DEMO 8: use chat to calculate log2 fold change between treatment groups and control group)
# (DEMO 9: auto-generate git commits)
# (DEMO 10: custom linting agent to fix style issues)

