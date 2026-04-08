# -----------------------------------------------------------
# Calculates Log2-Fold Change Between two Numeric Vectors
# -----------------------------------------------------------

# Automatically handles NA values by removing them before calculation.

calculate_log2_fc <- function(treatment_vals, control_vals) {
  t_mean <- mean(treatment_vals, na.rm = TRUE)
  c_mean <- mean(control_vals, na.rm = TRUE)

  if (is.na(c_mean) || c_mean == 0) return(NA)

  log2(t_mean / c_mean)
}

# (DEMO 4: highlight regex, type Ctrl+I, type `/explain`)
# (DEMO 5: highlight function, type Ctrl+I, type `add docstring`)
extractPatientCohort <- function(file_name) {
  matches <- regmatches(file_name, 
    regexpr("(?<=_)[A-Z]{2,3}(?=[0-9]{4})", file_name, perl=TRUE))
  return(matches)
}