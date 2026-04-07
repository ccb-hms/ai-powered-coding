# Setup (AI-Powered Vibe Coding with GitHub Copilot)

This folder contains setup instructions for the workshop. We recommend completing setup a few days before the workshop so you have time to resolve GitHub Education verification delays.

## 1. GitHub Copilot Access (Required For The Hands-On)

You will get the best experience with **GitHub Copilot Pro**.

### Option A (Recommended): GitHub Education (Free for Academics & Students)

GitHub offers free Copilot access to both students and academic faculty/staff. To ensure your application is approved without delays, please follow these steps carefully:

1. **Prepare your GitHub Account:**
   - Ensure your institutional `.edu` email address is added to your GitHub account (you can have multiple emails linked to one GitHub account).
   - Ensure the **Name** on your GitHub profile *exactly matches* the name on your Harvard (or institutional) ID card. *(Note: You can change your GitHub display name back to whatever you want immediately after your application is approved!)*

2. **Apply for Benefits:**
   - Go to the application portal: [https://github.com/settings/education/benefits?locale=en-US](https://github.com/settings/education/benefits?locale=en-US)
   - Follow the prompts to upload a photo of your institutional ID card.

3. **Wait for Activation:**
   - Profile approval is often quick, but the actual Copilot benefits can take about **72 hours** to activate on your account (and longer if they ask you to resubmit verification). 

4. **Redeem:**
   - After you receive confirmation, return to the [Education Benefits page](https://github.com/settings/education/benefits?locale=en-US) and explicitly redeem Copilot using the redemption link shown there.


### Option B (Backup): 30-Day Copilot Pro Trial

[https://github.com/github-copilot/pro](https://github.com/github-copilot/pro)

You can cancel before the trial ends to avoid charges.

### Option C (Limited): Copilot Free Tier

GitHub also offers a free tier with limited monthly usage. This may be sufficient for light testing, but you may run out of allowance during the hands-on portion.

## 2. Choose Your Editor

We will teach primarily in **Visual Studio Code**. Positron is supported. RStudio is supported with more limited Copilot features.

- Visual Studio Code setup:
  [`VS Code`](vscode.md)

- Positron setup:
  [`Positron`](positron.md)

- RStudio setup:
  [`RStudio`](rstudio.md)

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