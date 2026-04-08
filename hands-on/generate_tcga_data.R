# --------------------------------------------------------------------------------
# Script: generate_tcga_data.R
# Purpose: Generate a mathematically realistic, professional synthetic clinical 
#          trial dataset for the AI-Powered Vibe Coding Workshop.
# --------------------------------------------------------------------------------

# Set seed for exact reproducibility
set.seed(2026)

# 1. Define cohort size
n_patients <- 500

# 2. Generate basic demographics
patient_id <- sprintf("TCGA-%s-%04d", 
                      sample(c("A1", "EB", "C8", "DF"), n_patients, replace = TRUE), 
                      sample(1000:9999, n_patients, replace = FALSE))

age_at_diagnosis <- round(rnorm(n_patients, mean = 62, sd = 10))
age_at_diagnosis <- ifelse(age_at_diagnosis < 30, 30, age_at_diagnosis) # Cap minimum age

clinical_stage <- sample(
  c("Stage II", "Stage III", "Stage IV"), 
  n_patients, 
  replace = TRUE, 
  prob = c(0.3, 0.4, 0.3)
)

# 3. Generate Clinical Trial variables (Biomarker & Treatment)
biomarker_status <- sample(
  c("BRAF_V600E", "Wildtype"), 
  n_patients, 
  replace = TRUE, 
  prob = c(0.45, 0.55)
)

treatment_arm <- sample(
  c("Standard_Chemo", "Targeted_Therapy"), 
  n_patients, 
  replace = TRUE
)

# 4. Simulate survival math (The biological "rigging")
# Base hazard rate
base_hazard <- 0.002 

# Multipliers (Hazard Ratios)
hr_stage_IV  <- 2.0   # Stage IV is worse
hr_targeted  <- 0.4   # Targeted therapy is protective...
hr_mismatch  <- 1.5   # ...BUT only if they have the biomarker! If wildtype on targeted, it's worse.

# Calculate individual hazards
hazard <- base_hazard * 
  ifelse(clinical_stage == "Stage IV", hr_stage_IV, 1) *
  ifelse(treatment_arm == "Targeted_Therapy" & biomarker_status == "BRAF_V600E", hr_targeted, 1) *
  ifelse(treatment_arm == "Targeted_Therapy" & biomarker_status == "Wildtype", hr_mismatch, 1)

# Generate survival times using an exponential distribution
os_days <- round(rexp(n_patients, rate = hazard))

# 5. Determine Vital Status (Censoring at 5 years / 1825 days)
vital_status <- ifelse(os_days > 1825, "Alive", "Dead")
os_days <- ifelse(os_days > 1825, 1825, os_days)

# 6. Inject intentional missing data (NAs) for the AI data cleaning exercise!
# Randomly select 20 patients to have missing survival data
na_indices <- sample(1:n_patients, 20)
os_days[na_indices] <- NA
vital_status[na_indices] <- NA

# 7. Assemble Dataframe
tcga_clinical_trial <- data.frame(
  patient_id,
  age_at_diagnosis,
  clinical_stage,
  biomarker_status,
  treatment_arm,
  os_days,
  vital_status
)

# 8. Save to CSV in the data/ folder
write.csv(tcga_clinical_trial, "data/tcga_clinical_trial.csv", row.names = FALSE)

