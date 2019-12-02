Maintainer: Chirag Shah

Who is it for: For VS Code users working on 2 or more projects simultaneously.

Video : https://www.youtube.com/watch?v=9wVCbAz7akM

Steps:
1. Create `.vscode` directory at the root of the project
2. Create a `settings.json` file inside the `.vscode` directory
3. Paste the sample code from below
4. Make sure you add `.vscode` directory to `.gitignore` ;)

Sample Code:
```
{
  "workbench.colorCustomizations": {
    "titleBar.activeForeground": "#000000",
    "titleBar.inactiveForeground": "#000000CC",
    "titleBar.activeBackground": "#1ec28c",
    "titleBar.inactiveBackground": "#1ec28cCC"
  }
}
```
