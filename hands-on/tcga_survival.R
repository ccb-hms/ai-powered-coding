﻿# ---------------------------------------------
# CCB WORKSHOP: Hands-On AI Survival Analysis
# ---------------------------------------------

# Load necessary libraries
library(dplyr)
library(survival)
library(survminer)

# Load the clinical trial data
df <- read.csv("data/tcga_clinical_trial.csv")


# _________________________________________________________
# PHASE 1: Setting Lab Rules (Tool: /create-instructions)
# _________________________________________________________

# GOAL: Force the AI to always use our preferred packages.
# ACTION: Open Chat Mode, type `/create-instructions`, and prompt:
# "Always use dplyr for data wrangling. Always use survminer for
# survival plots. Never use base R for plotting."
# (Accept the creation of the .instructions.md file!)


# ____________________________________________
# PHASE 2: Data Exploration (Tool: Chat Mode)
# ____________________________________________

# GOAL: Understand the dataset without opening the CSV file yourself.
# ACTION: Open the Sidebar Chat. Let Copilot's Smart Search find the file!
# PROMPT TO TRY:
# "What are the column names in tcga_clinical_trial.csv, and what are
# the unique values inside the biomarker_status and treatment_arm columns?"




# ___________________________________________
# PHASE 3: Data Wrangling (Tool: Agent Mode)
# ___________________________________________

# GOAL: Clean the data for survival analysis.
# ACTION: Highlight the blank space below. Switch to "Agent" mode, and type:
# PROMPT TO TRY:
# "Write code to filter out rows where os_days is NA. Create a new column
# called 'os_months' (os_days / 30.4). Create a new column 'status_binary'
# where vital_status is 'Dead' = 1 and 'Alive' = 0. Save this as 'clean_df'."




# __________________________________________________
# PHASE 4: Kaplan-Meier Plotting (Tool: Agent Mode)
# __________________________________________________

# GOAL: Generate a publication-ready plot step-by-step.
# ACTION: Highlight the blank space below. In "Agent" mode, prompt:
# PROMPT TO TRY:
# "Fit a survival curve for os_months and status_binary grouped by treatment_arm
# using clean_df. Plot it with a p-value and risk table. Create a 'figures/'
# directory if it doesn't exist, and save the plot inside it as
# 'survival_plot.pdf'."




# ______________________________________________________
# PHASE 5: AI Debugging (Tool: Terminal Auto-Detection)
# ______________________________________________________

# GOAL: Let the AI read your terminal errors automatically.
# ACTION: Run the lines below in your console. It will throw a
# "not found" error!
# TO FIX IT: Open Sidebar Chat (Chat mode) and prompt:
# "Why did my code just fail?" (Copilot will read the terminal automatically!)

cox_model <- coxph(
  Surv(os_months, status_binary) ~ treatment_arm + clinical_stage,
  data = cleen_dataframe
)

summary(cox_model)


# _________________________________________________________
# PHASE 6: Stratified Survival Analysis (The Secret Math!)
# _________________________________________________________

# GOAL: Discover the biological interaction hidden in the data.
# ACTION: Highlight the "REPLACE ME" block below. In Agent mode, prompt:
# "Replace the highlighted text with a new survfit model grouped by both
# treatment_arm AND biomarker_status. Plot it with a p-value, put the legend
# on the right, and save the plot in the figures/ folder as
# 'stratified_plot.pdf'."

# --- REPLACE ME ---
# (Your new stratified survival model and plot code goes here!)
# ------------------


# ____________________________________________________
# PHASE 7: Build a Custom Agent (Tool: /create-agent)
# ____________________________________________________

# GOAL: Build a specialized AI teammate to handle language translations.
# ACTION: Go to Chat Mode and type `/create-agent`.
# PROMPT: "I need an expert R-to-Python code translator. It should translate
# R data-wrangling code into clean, pythonic pandas code."
# (Save it as @python-translator)


# _____________________________________________
# PHASE 8: Python Translation & File Creation
# _____________________________________________

# GOAL: Use your new Agent to migrate your R pipeline.
# ACTION: Highlight your completed Phase 3 code. Switch to Chat mode.
# PROMPT: "@python-translator Translate this #selection into Python. Save the
# new script as 'clean_data.py' inside the 'hands-on/' folder."


# __________________________________________________
# PHASE 9: The Magic Commit (Tool: Source Control)
# __________________________________________________

# GOAL: Let AI summarize everything you just did.
# ACTION:
# 1. Save this file (Ctrl+S).
# 2. Open the "Source Control" Git tab on your left sidebar.
# 3. Click the Sparkle icon (âœ¨) in the commit text box and watch it write
#    a summary of the R script, the Python script, the Agent, and the PDFs!