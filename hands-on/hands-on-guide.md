# Hands-On: TCGA Survival Analysis

Welcome to Part 3 of the workshop. In this 45-minute session, we will practice **"Vibe Coding"** by using GitHub Copilot to accelerate the analysis of a clinical trial dataset.

## 📊 The Dataset: `tcga_clinical_trial.csv`

We are analyzing a simulated cohort of 500 patients testing a novel **Targeted Therapy** against Standard Chemotherapy. 
The data includes a specific genetic mutation (`biomarker_status`: BRAF_V600E vs Wildtype). The primary endpoint of this analysis is to determine if the targeted therapy significantly improves Overall Survival (OS).

## 🚀 Getting Started

Open your IDE (VS Code or Positron) and navigate to the `hands-on` folder:

1. Open `tcga_survival.R`.
2. Follow the prompt instructions embedded in the script for Phase 1.

*Note: AI responses are non-deterministic. If your Copilot generates broken code or hallucinates a function that does not exist, simply open `tcga_survival_SOLUTION.R`, copy the correct code for that phase, and continue with the exercise.*

---

### The 6 Core Phases:

- **Phase 1: Data Exploration** *(Tool: Sidebar Chat + `#` Pinning)*
- **Phase 2: Data Wrangling** *(Tool: Inline Chat)*
- **Phase 3: Legacy Code Interpretation** *(Tool: Slash Commands `/explain` & `/doc`)*
- **Phase 4: Kaplan-Meier Plotting** *(Tool: Verbose Prompting)*
- **Phase 5: AI Debugging** *(Tool: `#terminal` or Error Chat)*
- **Phase 6: The Magic Commit** *(Tool: Git Integration)*