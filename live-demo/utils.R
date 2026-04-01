# -----------------------------------------------------------
# Calculates Log2-Fold Change Between two Numeric Vectors
# -----------------------------------------------------------

# Automatically handles NA values by removing them before calculation.

calculateLog2Fc <- function(treatment_vals, control_vals) {
  t_mean <- mean(treatment_vals, na.rm = TRUE)
  c_mean <- mean(control_vals, na.rm = TRUE)
  
  if(is.na(c_mean) || c_mean == 0) return(NA)
  
  return(log2(t_mean / c_mean))
}