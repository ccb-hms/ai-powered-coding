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

df <- read.csv("biomarker_dummy.csv")
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
# (DEMO 7: Later, highlight the fixed code and translate to Python)

library(dplyr)

clean_data <- read.csv("biomarker_dummy.csv") %>%
  filter(age > 18) 
  select(patient_id, treatment_group, biomarker_score, response_status)


# _______________________________________
# Section 5: Biomarker Summary + Boxplot
# _______________________________________

# (DEMOS 6, 8, 9, & 10: Use the code below to test Auto-Search vs explicit #utils.R, 
# test the @terminal command, auto-generate Git Commits, and test Positron's memory)

source("utils.R")
library(ggplot2)

biomarker_df <- read.csv("biomarker_dummy.csv")

# Compute log2 FC vs. Control for each treatment group
control_vals <- biomarker_df$biomarker_score[biomarker_df$treatment_group == "Control"]

biomarker_summary <- biomarker_df |>
  group_by(treatment_group) |>
  summarise(
    n          = n(),
    mean_score = mean(biomarker_score, na.rm = TRUE),
    sd_score   = sd(biomarker_score, na.rm = TRUE),
    log2_fc    = calculate_log2_fc(biomarker_score, control_vals)
  )

print(biomarker_summary)

# Boxplot of biomarker_score by treatment_group
ggplot(biomarker_df, aes(x = treatment_group, y = biomarker_score, fill = treatment_group)) +
  geom_boxplot(outlier.shape = 21, outlier.size = 2) +
  labs(
    title = "Biomarker Score by Treatment Group",
    x     = "Treatment Group",
    y     = "Biomarker Score"
  ) +
  theme_minimal() +
  theme(legend.position = "none")