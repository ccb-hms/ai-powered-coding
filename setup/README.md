# Setup (AI-Powered Vibe Coding with GitHub Copilot)

This folder contains setup instructions for the workshop. We recommend completing setup a few days before the workshop so you have time to resolve GitHub Education verification delays.

## 1. GitHub Copilot Access (Required For The Hands-On)

You will get the best experience with **GitHub Copilot Pro**.

### Option A (Recommended): GitHub Education (Free Copilot Pro For Eligible Academics)

1. Apply here:

   https://github.com/settings/education/benefits?locale=en-US

2. Approval can be fast, but Copilot benefits may take about **72 hours** to activate (and longer if you need to resubmit verification).

3. After activation, return to the same page and redeem Copilot using the Copilot redemption link shown there.

### Option B (Backup): 30-Day Copilot Pro Trial

https://github.com/github-copilot/pro

You can cancel before the trial ends to avoid charges.

### Option C (Limited): Copilot Free Tier

GitHub also offers a free tier with limited monthly usage. This may be sufficient for light testing, but you may run out of allowance during the hands-on portion.

## 2. Choose Your Editor

We will teach primarily in **Visual Studio Code**. Positron is supported. RStudio is supported with more limited Copilot features.

- Visual Studio Code setup:
  [`vscode.md`](vscode.md)

- Positron setup:
  [`positron.md`](positron.md)

- RStudio setup:
  [`rstudio.md`](rstudio.md)

## 3. Quick Test (Verify Copilot Works)

After completing setup, verify Copilot works by running the quick test.

### R Test

1. Create a new file and save it as `copilot_test.R`.

2. Add this comment, press Enter, then wait 1 to 3 seconds:

   `# Load ggplot2 and plot mpg vs hp from mtcars with a trendline`

3. You should see a gray suggestion (Ghost Text).

4. Press Tab to accept.

### Python Test

1. Create a new file and save it as `copilot_test.py`.

2. Add this comment, press Enter, then wait 1 to 3 seconds:

   `# Load seaborn, plot mpg vs horsepower from the mpg dataset, and add a regression line`

3. Press Tab to accept.

## 4. Common Troubleshooting

- Confirm you are signed into GitHub inside your editor.
- Confirm your Copilot plan is active (Education, trial, or paid).
- Make sure your test file is saved with the correct extension (.R or .py).
- If Positron Assistant looks enabled but no models appear, sign out of GitHub in Positron and sign back in (this refreshes the Copilot authorization token).

## 5. Support

If you have issues, email:

- [anthony-alexander_christidis@hms.harvard.edu](mailto:anthony-alexander_christidis@hms.harvard.edu)  
- [alex_pickering@hms.harvard.edu](mailto:alex_pickering@hms.harvard.edu)

Please include:

- Operating system (Mac, Windows, Linux)
- Editor (VS Code, Positron, RStudio)
- Copilot plan status (Education, trial, free tier)
- Any screenshots or error messages