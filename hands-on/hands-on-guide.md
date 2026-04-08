# Hands-On: TCGA Survival Analysis

Welcome to Part 3 of the workshop. In this 45-minute session, we will practice **"Vibe Coding"** by using GitHub Copilot to accelerate the analysis of a clinical trial dataset.

## 📊 The Dataset: `tcga_clinical_trial.csv`

We are analyzing a simulated cohort of 500 patients testing a novel **Targeted Therapy** against **Standard Chemotherapy**. The primary endpoint of this analysis is to determine if the targeted therapy significantly improves Overall Survival (OS).

The dataset contains the following 7 variables:

- **`patient_id`**: Unique patient barcode.
- **`age_at_diagnosis`**: Patient age in years.
- **`clinical_stage`**: Disease severity at baseline (*Stage II, III, or IV*).
- **`biomarker_status`**: Tumor genetic profile (*BRAF_V600E vs. Wildtype*).
- **`treatment_arm`**: The therapy the patient was randomized to receive.
- **`os_days`**: Overall survival time in days. *(Note: Contains intentional missing data for our wrangling exercise!)*
- **`vital_status`**: The clinical endpoint (*Alive* or *Dead*).

## 🚀 Getting Started

Open your IDE (VS Code or Positron) and navigate to the `hands-on` folder:

1. Open `tcga_survival.R`.
2. Follow the prompt instructions embedded in the script for Phase 1.

*Note: AI responses are non-deterministic. If your Copilot generates broken code or hallucinates a function that does not exist, simply open `tcga_survival_SOLUTION.R`, copy the correct code for that phase, and continue with the exercise.*

---

### The 6 Core Phases:

- **Phase 1: Data Exploration** *(Tool: Sidebar Chat + `#` Pinning)*
- **Phase 2: Data Wrangling** *(Tool: Sidebar Chat / Edit)*
- **Phase 3: Legacy Code Interpretation** *(Tool: Sidebar Chat for `/explain` & `/doc`)*
- **Phase 4: Kaplan-Meier Plotting** *(Tool: Sidebar Chat / Edit)*
- **Phase 5: AI Debugging** *(Tool: `#terminal` or Error Chat)*
- **Phase 6: The Magic Commit** *(Tool: Git Integration)*

### 🌟 Bonus Phases:

- **Bonus 1: The Math** — Test the AI's statistical knowledge by adding interaction terms to a Cox Proportional Hazards model and plotting the results.
- **Bonus 2: Python Translation** — Ask Copilot to translate your R data-wrangling logic into `pandas` and save it as a brand new Python file.