
<div align="center">
  <h1>GitHub Clone Button</h1>
  <h3>A userscript which adds a clone button to the GitHub website</h3>

  ![Screenshot of Button](https://user-images.githubusercontent.com/110846042/189494295-b6d7c9d6-a518-4128-a0b2-7a14728cb5ac.png#gh-light-mode-only)
  ![Screenshot of Button](https://user-images.githubusercontent.com/110846042/189494299-572e352a-1ef4-429c-8541-18ff330ec2b3.png#gh-dark-mode-only)

</div>

#### Currently Windows only

### Installation
1. Clone this repository
2. Run [```windows/install.bat```](https://github.com/bennett-sh/gh-clone-button/blob/main/windows/install.bat)
3. Install any userscript chrome extension like [Tampermonkey](https://chrome.google.com/webstore/detail/tampermonkey/dhdgffkkebhmkfjojejmpbldmpobfkfo)
4. [Install the script](https://github.com/bennett-sh/gh-clone-button/raw/main/clone-button.user.js)
5. Profit.

### Screenshots
<img src="https://user-images.githubusercontent.com/110846042/189494019-9bacc22a-eb3f-435f-9e84-f9b579ad4381.png" alt="Screenshot of GitHub">

### Customization
##### Edit [```windows/git-clone.bat```](https://github.com/bennett-sh/gh-clone-button/blob/main/windows/git-clone.bat):
#### Changing the default folder
- Replace ```cd %~dp0
...
cd %downloads%``` with ```cd YOUR_DIR```

#### Removing the confirmation prompt
*Warning: this might allow websites/extensions to download malicious files onto your system*
- Remove
```
echo Press ENTER to clone "%repo%"
set /p confirm=""
```

