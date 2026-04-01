# -----------------------------------------
# AI-Powered Vibe Coding Coding Live Demo
# -----------------------------------------


# ___________________
# 1. Data Ingestion
# ___________________

# (DEMO 1: We will use Ghost Text to write the code below)




# ____________________________________
# 2. Data Cleaning (Intentional Bug)
# ____________________________________

# (DEMO 4: Use /fix on the broken pipe below)

library(dplyr)

clean_data <- read.csv("data/biomarker_dummy.csv") %>%
  filter(age > 18) 
  select(patient_id, treatment_group, biomarker_score, response_status)


# ________________________________
# 3. Visualization (Refactoring)
# ________________________________

# (DEMO 2: Use Inline Chat (Ctrl+I) to convert this to ggplot2)

df <- read.csv("biomarker_dummy.csv")
plot(df$age, df$biomarker_score, 
     col = as.factor(df$treatment_group), 
     main = "Age vs Biomarker",
     xlab = "Age", ylab = "Score", pch=19)


# ____________________________
# 4. Legacy Code Explanation
# ____________________________

# (DEMO 3 & 5: Use /doc and /explain here)

extractPatientCohort <- function(file_name) {
  matches <- regmatches(file_name, 
    regexpr("(?<=_)[A-Z]{2,3}(?=[0-9]{4})", file_name, perl=TRUE))
  return(matches)
}