
<div align="center">
  <img src="https://raw.githubusercontent.com/MichaelCurrin/logos/main/assets/img/github.svg" alt="GitHub" width=64><h1>GitHub Clone Button</h1>
  <h3>A userscript which adds a clone button to the GitHub website</h3>

  ![Screenshot of Button](https://user-images.githubusercontent.com/110846042/189494295-b6d7c9d6-a518-4128-a0b2-7a14728cb5ac.png#gh-light-mode-only)
  ![Screenshot of Button](https://user-images.githubusercontent.com/110846042/189494299-572e352a-1ef4-429c-8541-18ff330ec2b3.png#gh-dark-mode-only)

</div>

#### 🪟 Currently Windows only

### 📲 Installation
<ol>
  <li>Clone this repository</li>
  <li>Run <a href="https://github.com/bennett-sh/gh-clone-button/blob/main/install.bat"><code>install.bat</code></a></li>
  <li>
    Add the clone-to folder to the environment variable <code>gc-dir</code>
    <ol>
      <li>Open <code>Edit environment variables for your account</code></li>
      <li>Click on <code>New</code></li>
      <li>Enter <code>gc-dir</code> as the variable name</li>
      <li>Click <code>Browse Directory...</code>, then choose the directory which you'd like to clone to by default</li>
      <li>Click <code>OK</code> twice</li>
    </ol>
  </li>
  <li>Install <a href="https://github.com/bennett-sh/gh-clone-button/blob/main/clone-button.user.js">the script</a> using any user script extension like <a href="https://www.tampermonkey.net/">TamperMonkey</a></li>
  <li>Profit.</li>
</ol>

### 📸 Screenshots
<img src="https://user-images.githubusercontent.com/110846042/189494019-9bacc22a-eb3f-435f-9e84-f9b579ad4381.png" alt="Screenshot of GitHub">

### ⚠️ WARNING:
If you are using a browser which does not protect url protocols behind a prompt: DON'T USE THIS. It may result in malicious files on your device.
###### I might add an environment variable to require a confirmation before cloning later.
