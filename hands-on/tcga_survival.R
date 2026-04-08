# ---------------------------------------------
# CCB WORKSHOP: Hands-On AI Survival Analysis
# ---------------------------------------------

# Load necessary libraries
library(dplyr)
library(survival)
library(survminer)

# Load the clinical trial data
df <- read.csv("data/tcga_clinical_trial.csv")


# ________________________________________________
# PHASE 1: Data Exploration (Tool: Sidebar Chat)
# ________________________________________________

# GOAL: Understand the dataset without writing code.
# ACTION: Open your Copilot Sidebar Chat. 
# PROMPT TO TRY: 
# "Look at #tcga_clinical_trial.csv. What are the column names, and what are 
# the unique values inside the biomarker_status and treatment_arm columns?"




# _____________________________________________________
# PHASE 2: Data Wrangling (Tool: Inline Chat / Ctrl+I)
# _____________________________________________________

# GOAL: Clean the data for survival analysis.
# ACTION: Highlight the blank space below, press Ctrl+I (or Cmd+I), and type:
# PROMPT TO TRY: 
# "Filter out rows where os_days is NA. Create a new column called 'os_months' 
# (os_days / 30.4). Create a new column 'status_binary' where 'Dead' = 1 and 
# 'Alive' = 0. Save this as 'clean_df'."




# ___________________________________________________________
# PHASE 3: Legacy Code Interpretation (Tool: Slash Commands)
# ___________________________________________________________

# GOAL: Understand and document code you didn't write.
# ACTION 1: Highlight the function below, press Ctrl+I, and type `/explain`.
# ACTION 2: Highlight it again, press Ctrl+I, type `/doc`, and accept the diff.

calculate_risk_metric <- function(t, e) {
  if(length(t) != length(e)) stop("Mismatch")
  o <- order(t)
  t <- t[o]; e <- e[o]
  r <- length(t):1
  h <- e/r
  return(cumsum(h))
}


# __________________________________________________________
# PHASE 4: Kaplan-Meier Plotting (Tool: Verbose Prompting)
# __________________________________________________________

# GOAL: Generate a publication-ready plot.
# ACTION: Highlight the blank space below, press Ctrl+I, and give a detailed prompt.
# PROMPT TO TRY: 
# "Using clean_df, fit a survival curve (survfit) for os_months and status_binary 
# grouped by treatment_arm. Then use ggsurvplot to plot it. Include a p-value, 
# a risk table, and a title."




# _______________________________________________________
# PHASE 5: AI Debugging (Tool: #terminal or Error Chat)
# _______________________________________________________

# GOAL: Fix broken code without Googling.
# ACTION: Run the lines below in your console. It will throw a "not found" error!
# TO FIX IT: Ask Copilot Chat: "Why did this code fail? [Paste Error]" 
# (Or if using VS Code, use the #terminal tag in the chat!)

cox_model <- coxph(Surv(os_months, status_binary) ~ treatment_arm + clinical_stage, 
                   data = cleen_dataframe)

summary(cox_model)


# __________________________________________________
# PHASE 6: The Magic Commit (Tool: Source Control)
# __________________________________________________

# GOAL: Let AI write your Git history.
# ACTION: 
# 1. Save this file (Ctrl+S).
# 2. Open the "Source Control" Git tab on your left sidebar.
# 3. Click the Sparkle icon (✨) in the commit text box and watch it write!



# _____________
# BONUS PHASES 
# _____________

# BONUS 1: The Math (Interaction Terms)
# Use Ctrl+I to prompt: "Update the cox_model to include an interaction term 
# between treatment_arm and biomarker_status. Then plot it using ggforest."


# BONUS 2: Python Translation & File Creation
# Highlight your completed Phase 2 dplyr code. Open the Sidebar Chat and prompt:
# "Create a new Python file and translate this exact data cleaning logic into pandas."