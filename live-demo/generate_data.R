# -------------------------------------------------
# Script to Generate Dummy Data for the Live Demo
# -------------------------------------------------

# Includes biological signal: 
# Interaction between treatment_group and biomarker_score

set.seed(0)

n_patients <- 150
patient_id <- paste0("PT_", sprintf("%03d", 1:n_patients))
age <- round(rnorm(n_patients, mean = 55, sd = 12))
treatment_group <- sample(c("Control", "Drug_A", "Drug_B"), n_patients, replace = TRUE)
biomarker_score <- round(runif(n_patients, 10, 100), 1)

# Generate biological signal (log odds of response)
log_odds <- numeric(n_patients)

for (i in 1:n_patients) {
  if (treatment_group[i] == "Control") {
    # Poor baseline, little effect from biomarker
    log_odds[i] <- -2 + 0.01 * biomarker_score[i]
  } else if (treatment_group[i] == "Drug_B") {
    # Decent baseline, little effect from biomarker
    log_odds[i] <- 0.5 + 0.01 * biomarker_score[i]
  } else if (treatment_group[i] == "Drug_A") {
    # Strong interaction: Highly dependent on biomarker score
    log_odds[i] <- -5 + 0.09 * biomarker_score[i] 
  }
}

# Convert log odds to probability and sample response
prob_response <- 1 / (1 + exp(-log_odds))
response_binary <- rbinom(n_patients, 1, prob_response)
response_status <- ifelse(response_binary == 1, "Responder", "Non-Responder")

demo_data <- data.frame(
  patient_id = patient_id,
  age = age,
  treatment_group = treatment_group,
  biomarker_score = biomarker_score,
  response_status = response_status
)

# Introduce a few NAs to make the cleaning demo realistic
demo_data$biomarker_score[sample(1:n_patients, 5)] <- NA
demo_data$age[sample(1:n_patients, 3)] <- NA

write.csv(demo_data, "data/biomarker_dummy.csv", row.names = FALSE)
cat("Dummy data with interaction signal generated and saved to biomarker_dummy.csv\n")