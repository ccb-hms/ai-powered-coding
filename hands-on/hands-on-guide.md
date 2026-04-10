# Hands-On: TCGA Survival Analysis

Welcome to Part 3 of the workshop. In this 30-minute session, we will practice **"Vibe Coding"** by using GitHub Copilot to accelerate the analysis of a clinical trial dataset.

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

Open VS Code and navigate to the `hands-on` folder:

1. Open `tcga_survival.R`.
2. Follow the prompt instructions embedded in the script for Phase 1.

*Note: AI responses are non-deterministic. If your Copilot hallucinates a function that does not exist, simply open `tcga_survival_SOLUTION.R`, copy the correct code for that phase, and continue with the exercise.*

---

### The 9 Workshop Phases:
- **Phase 1: Setting Lab Rules** *(Tool: `/create-instructions`)*
- **Phase 2: Data Exploration** *(Tool: Smart Search + Chat Mode)*
- **Phase 3: Data Wrangling** *(Tool: Agent Mode)*
- **Phase 4: Kaplan-Meier Plotting** *(Tool: Agent Mode)*
- **Phase 5: AI Debugging** *(Tool: Terminal Auto-Detection)*
- **Phase 6: Stratified Survival** *(Tool: Agent Mode)*
- **Phase 7: Build a Custom Agent** *(Tool: `/create-agent`)*
- **Phase 8: Python Translation** *(Tool: Chat Mode + Custom Agent)*
- **Phase 9: The Magic Commit** *(Tool: Git Integration)*