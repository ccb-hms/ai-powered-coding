# RStudio Setup for GitHub Copilot

*Note: As of April 14, 2026, the **stable release** of RStudio only supports Copilot "Ghost Text" (autocomplete). However, if you are using an **RStudio Daily Build**, you now have access to the full Posit AI Assistant (which includes Chat and Inline editing).*

## 1. Update RStudio

- **For Stable Release (Autocomplete only):** You must be using RStudio version 2023.09.0 or newer. Download it here: [https://posit.co/download/rstudio-desktop/](https://posit.co/download/rstudio-desktop/)
- **For Daily Builds (Full AI Assistant):** Download the latest bleeding-edge daily build here: [https://dailies.rstudio.com/](https://dailies.rstudio.com/)

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

You are now ready to code! If you are on the stable release, just type a comment in an R script and wait a few seconds for the Ghost Text suggestion to appear. If you are on a daily build, look for the new Posit Assistant chat panel!