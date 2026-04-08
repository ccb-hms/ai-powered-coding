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
# ACTION: Open your Sidebar Chat (Ask mode). 
# PROMPT TO TRY: 
# "Look at #tcga_clinical_trial.csv. What are the column names, and what are 
# the unique values inside the biomarker_status and treatment_arm columns?"




# _____________________________________________________
# PHASE 2: Data Wrangling (Tool: Sidebar Chat / Edit)
# _____________________________________________________

# GOAL: Clean the data for survival analysis.
# ACTION: Place your cursor below. Open Sidebar Chat (Edit or Agent mode).
# PROMPT TO TRY: 
# "Write code to filter out rows where os_days is NA. Create a new column 
# called 'os_months' (os_days / 30.4). Create a new column 'status_binary' 
# where vital_status is 'Dead' = 1 and 'Alive' = 0. Save this as 'clean_df'."




# ___________________________________________________________
# PHASE 3: Legacy Code Interpretation (Tool: Sidebar Chat)
# ___________________________________________________________

# GOAL: Understand and document code you didn't write.
# ACTION 1: Highlight the function below. In Sidebar Chat (Ask mode), prompt:
#           "Explain what this #selection calculates."
# ACTION 2: Keep it highlighted. Switch to Edit mode and prompt:
#           "Add Roxygen2 documentation to this #selection." Accept the diff!

calculate_risk_metric <- function(t, e) {
  if(length(t) != length(e)) stop("Mismatch")
  o <- order(t)
  t <- t[o]; e <- e[o]
  r <- length(t):1
  h <- e/r
  return(cumsum(h))
}


# __________________________________________________________
# PHASE 4: Kaplan-Meier Plotting (Tool: Sidebar Chat / Edit)
# __________________________________________________________

# GOAL: Generate a publication-ready plot and save it.
# ACTION: Place your cursor below. Open Sidebar Chat (Edit or Agent mode).
# PROMPT TO TRY: 
# "Using clean_df, fit a survival curve (survfit) for os_months and status_binary 
# grouped by treatment_arm. Use ggsurvplot to plot it with a p-value and a 
# risk table. Finally, write code to save the plot as 'survival_plot.pdf'."




# _______________________________________________________
# PHASE 5: AI Debugging (Tool: #terminal or Error Chat)
# _______________________________________________________

# GOAL: Fix broken code without Googling.
# ACTION: Run the lines below in your console. It will throw a "not found" error!
# TO FIX IT: Open Sidebar Chat (Ask mode) and prompt: 
# "Why did this code fail? [Paste your error]" (Or use the #terminal tag!)

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

# BONUS 1: Stratified Survival Analysis (The Secret Math!)
# ACTION: Highlight the "REPLACE ME" block below. Open Sidebar Chat (Edit mode).
# PROMPT: "Replace this #selection with a new survfit model grouped by both 
# treatment_arm AND biomarker_status. Plot it using ggsurvplot with a p-value, 
# and save the plot as 'stratified_plot.pdf'."

# --- REPLACE ME ---
# (Your new stratified survival model and plot code goes here!)
# ------------------


# BONUS 2: Python Translation & File Creation
# ACTION: Highlight your completed Phase 2 code. Open Sidebar Chat (Agent mode).
# PROMPT: "Translate this #selection into Python using pandas. Save the new 
# script as 'clean_data.py' inside the 'hands-on/' folder."