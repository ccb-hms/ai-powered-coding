# Live Demo Guide: AI-Assisted Coding

This folder contains the scripts used during the Hour 1 live demonstration. You can follow these exact steps to practice using GitHub Copilot's features.

**Setup:**

- Open this folder in VS Code.
- Ensure you have run `generate_data.R` to create the `biomarker_dummy.csv` file.
- Open `live_demo.R`. Keep `utils.R` closed to test Copilot's search features.

---

### Demo 1: Ghost Text (Data Ingestion)

1. Go to Section 1 in `live_demo.R`.
2. Type the following comment and press `Enter`:
   `# Load readr, read biomarker_dummy.csv, and display the first 5 rows`
3. Wait 1-3 seconds for the gray "Ghost Text" to appear.
4. Press `Tab` to accept the suggestion.

### Demo 2: Inline Refactoring (Visualization)

1. Go to Section 2. Highlight the entire base R `plot()` code.
2. Press `Ctrl+I` (Windows/Linux) or `Cmd+I` (Mac) to open the Inline Chat.
3. Type: `Convert this to ggplot2. Map x to biomarker_score, y to response_status, and color points by treatment_group.`
4. Press Enter, review the red/green Diff, and click **Accept**.

### Demo 3: Slash Command `/explain` (Legacy Code)

1. Go to Section 3. Highlight the complex Regex string.
2. Press `Ctrl+I` and type `/explain`.
3. Copilot will open the sidebar and provide a plain-English translation of the regex.

### Demo 4: Slash Command `/doc` (Documentation)

1. Still in Section 3, highlight the entire `extractPatientCohort` function.
2. Press `Ctrl+I`, type `/doc`, and press Enter. 
3. Copilot will automatically generate Roxygen2 formatted documentation. Accept the diff.

### Demo 5: Slash Command `/fix` (Debugging)

1. Go to Section 4. Send the chunk to the terminal to run it.
2. It will throw an error: `Error in select(...) : object 'patient_id' not found` (because the code is missing a `|>` pipe).
3. Highlight the broken code, press `Ctrl+I`, type `/fix`, and press Enter.
4. Copilot will diagnose the missing pipe. Accept the fix.

### Demo 6: Context Awareness (Auto-Search & `#` Pinning)

*Copilot can search your entire project, but you can also explicitly force it to read files.*

1. Open the Sidebar Chat.
2. **Test Auto-Search:** Type: `I need to calculate log2 fold change. Is there a function for that in my project?` (Copilot should automatically search and find `utils.R`).
3. **Test Explicit Pinning:** Type `#ut` and press Tab to attach `#utils.R`. Then type: `How does the calculate_log2_fc function in this file handle NAs?` (This proves you can manually attach closed files).

### Demo 7: Language Translation (R to Python)

1. Highlight the fixed `dplyr` code from Section 4.
2. Open the Sidebar Chat.
3. Type: `Translate this exact logic to Python using pandas.`
4. Copilot will rewrite the logic in Python syntax.

### Demo 8: AI-Generated Git Commits

*Copilot can write your commit messages by reading your file diffs.*

1. Save the changes you just made to `live_demo.R`.
2. Open the **Source Control** tab on the left sidebar of VS Code.
3. Click the **Sparkle Icon** (✨) located inside the Commit Message text box.
4. Copilot will analyze what you changed and auto-generate a professional commit message.

### Demo 9: The Positron Superpower (Session Memory)

*Note: This demo requires the Positron IDE.*

1. Open Positron and load the CSV into your R environment: `env_data <- read.csv("biomarker_dummy.csv")`.
2. Open the Positron Assistant Chat.
3. Type: `Look at env_data in my environment. What are the column names, and write code to calculate the mean biomarker_score for each treatment_group.`
4. Notice how Positron Assistant reads your *live session memory*, whereas VS Code only reads text files.