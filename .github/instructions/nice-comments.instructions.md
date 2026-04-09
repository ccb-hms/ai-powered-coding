---
description: Always use clear, informative, and friendly comments in all R code. Comments should explain the purpose of code blocks, clarify non-obvious logic, and guide readers through the analysis. Avoid redundant or obvious comments. Use full sentences and a professional, helpful tone.
applyTo:
  - "**/*.R"
  - "**/*.rmd"
  - "**/*.qmd"
rule: |
  - Every function, data wrangling step, and plot must be preceded by a concise, meaningful comment.
  - Comments should describe the intent, not just restate the code.
  - Use section headers for major analysis phases.
examples:
  - "# Filter out patients with missing survival data"
  - "# Fit Kaplan-Meier survival curves by treatment arm"
  - "# Visualize the results with a risk table and p-value"
---

# Instruction: Use Nice Comments

All R code in this project must include clear, helpful comments that explain the purpose and logic of each step. Comments should be friendly, professional, and guide the reader through the analysis. Avoid stating the obvious or repeating code in comments.