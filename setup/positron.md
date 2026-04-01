# Positron Setup for GitHub Copilot

Positron (by Posit) uses a built-in AI engine called **Positron Assistant**. You do *not* install the standard VS Code extensions here.

> 📖 **Official Documentation:** If you run into issues, refer to the [Positron Assistant Getting Started Guide](https://positron.posit.co/assistant-getting-started.html).

## 1. Install Positron

If you don't have it installed, download it here:  
[https://github.com/posit-dev/positron/releases](https://github.com/posit-dev/positron/releases)

## 2. Enable Positron Assistant

1. Open Positron.
2. Open Settings (`Cmd + ,` on Mac or `Ctrl + ,` on Windows).
3. In the search bar, type: `positron.assistant.enable`
4. Check the box to turn it on.
5. **Restart Positron.**

## 3. Authenticate with GitHub

1. Open the Command Palette (`Cmd + Shift + P` or `Ctrl + Shift + P`).
2. Type and select: **`Positron Assistant: Configure Language Model Providers`**
3. A menu will appear. Select **GitHub Copilot**.
4. Your web browser will open to authenticate your GitHub account.
5. Return to Positron. Click the **Chat Bubble icon** on the far-left Activity Bar to open the Assistant.

## Troubleshooting: "No Models Available"

If Positron Assistant connects but the model dropdown is empty, it is likely using an old Git token.

**The Fix:**

1. Click the **Accounts** icon (the circle with a person) at the very bottom-left of the Positron window.
2. Hover over your GitHub username and select **Sign Out**.
3. Restart Positron.
4. Go back to the Chat pane and click "Sign in to a provider" to force a fresh authentication.