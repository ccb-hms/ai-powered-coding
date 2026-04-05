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
   `# load in biomarker data and print first few rows`
3. Wait 1-3 seconds for the gray "Ghost Text" to appear.
4. Press `Tab` to accept the suggestion.

### Demo 2: Inline Refactoring (Visualization)

1. Go to Section 2. Highlight the entire base R `plot()` code.
2. Press `Ctrl+I` (Windows/Linux) or `Cmd+I` (Mac) to open the Inline Chat.
3. Type: `convert this to ggplot2`
4. Press Enter, review the red/green Diff, and click **Undo**.

### Demo 3: Chat Refactoring (Visualization)

1. Go to Section 2. Highlight the entire base R `plot()` code.
2. Press `Ctrl+I` (Windows/Linux) or `Cmd+I` (Mac) and click `Add Selection to Chat`.
3. Type: `convert to ggplot2`.
4. Type: `make the plot score vs treatment colored by response`.
5. Type: `make Responders red and Non-Responders grey`.
6. Scroll up in chat and click `Restore Checkpoint`.

### Demo 4: Slash Command `/explain` (Legacy Code)

1. Go to Section 3. Highlight the complex Regex string.
2. Press `Ctrl+I` and type `/explain`.
3. Copilot will open the sidebar and provide a plain-English translation of the regex.

### Demo 5: Slash Command `/doc` (Documentation)

1. Still in Section 3, highlight the entire `extractPatientCohort` function.
2. Press `Ctrl+I`, type `/doc`, and press Enter. 
3. Copilot will automatically generate Roxygen2 formatted documentation. Accept the diff.

### Demo 6: Slash Command `/fix` (Debugging)

1. Go to Section 4. Send the chunk to the terminal to run it.
2. It will throw an error: `Error in select(...) : object 'patient_id' not found` (because the code is missing a `|>` pipe).
3. Highlight the broken code, press `Ctrl+I`, type `/fix`, and press Enter.
4. Copilot will diagnose the missing pipe. Accept the fix.

### Demo 7: Context Awareness (Auto-Search)

*Copilot can search your entire project, but you can also explicitly force it to read files.*

1. Open the Sidebar Chat.
2. **Test Auto-Search:** Type: `Where is my function that calculates log2 fold change?` (Copilot should automatically search and find `utils.R`).

### Demo 8: Using Found Functions

*After finding a function, use it in your code with Copilot's help.*

1. Go to Section 5 in `live_demo.R`.
2. Open the Sidebar Chat.
3. Ask: `write code that uses the log2 fold change function to compare control vs treatment groups`.
4. Copilot will generate code that imports and uses the function from `utils.R`. Accept the suggestion.

### Demo 9: AI-Generated Git Commits

*Copilot can write your commit messages by reading your file diffs.*

1. Save the changes you just made to `live_demo.R`.
2. Open the **Source Control** tab on the left sidebar of VS Code.
3. Click the **Sparkle Icon** (✨) located inside the Commit Message text box.
4. Copilot will analyze what you changed and auto-generate a professional commit message.

### Demo 10: Custom Agents

*Custom agents help Copilot handle unique workflows.*

1. In the Sidebar Chat, type: `fix linting issues in open file`. Did it do a good job?
2. To create a custom agent, type `/create-agent called lintr that checks code style issues using lintr::lint and fixes until no more issues identified` and follow prompts.
3. After agent is created, run the agent by typing `use lintr agent to fix style issues in live_demo.R`.
4. Review the suggested fixes and apply them to your code.
5. Commit changes.
