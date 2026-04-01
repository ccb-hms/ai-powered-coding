# RStudio Setup for GitHub Copilot

*Note: RStudio currently only supports Copilot "Ghost Text" (autocomplete). It does not support the advanced Chat, Agent, or Inline editing features available in VS Code and Positron.*

## 1. Update RStudio

You must be using RStudio version 2023.09.0 or newer.  

Download the latest version here: [https://posit.co/download/rstudio-desktop/](https://posit.co/download/rstudio-desktop/)

## 2. Enable Copilot

1. Open RStudio.
2. Go to the menu bar: **Tools** -> **Global Options**.
3. In the left-hand menu, select **Copilot**.
4. Check the box that says **Enable GitHub Copilot**.
5. RStudio will prompt you to install the Copilot Agent in the background. Click **Yes/Install**.

## 3. Authenticate

1. Once the background agent is installed, click the **Sign In** button in that same Global Options menu.
2. RStudio will provide a verification code and open your web browser.
3. Paste the code into the GitHub website and click **Authorize**.
4. Return to RStudio and click **Apply** / **OK**.

You are now ready to use Ghost Text! Just type a comment in an R script and wait a few seconds for the suggestion to appear.