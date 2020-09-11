[![License: MIT](https://img.shields.io/badge/License-MIT-red.svg)](https://opensource.org/licenses/MIT)

# CriticalThink
A web browser extension that determines the probability a given web page contains fake information.

_To learn more about CriticalThink, such as why and how it was made, please read the [wiki](https://github.com/brandonmain/CriticalThink/wiki)!_

## Browsers support

| [<img src="https://raw.githubusercontent.com/alrra/browser-logos/master/src/safari/safari_48x48.png" alt="Safari" width="24px" height="24px" />](http://godban.github.io/browsers-support-badges/)<br/>Safari |
| --------- |
| version 13.x

## Installation for Development/Testing
1. Have the latest version of Xcode installed.
2. Have the latest version of Safari installed, or at the minimum, Safari 13.x.
3. Clone this repository and open CriticalThink.xcodeproj


## Usage
Setting up the project at first was tricky, but the current settings currently in the Info.plist hve been configured to help. There are only a few more steps to do on a new development end.

1. After opening the project, you will be presented with the project and files. There are two schemes that allow for a the project to be ran. One scheme runs the container app and the other scheme runs the actual browser extension. You choose which scheme you would like to run depending on what you are developing for. 

2. If developing for the web extension, then choose scheme CritcialThink extension and then click run.

**Ignore steps 3 - 5 if you have a developer certificate.**

3. The application will then start a new safari browser instance but your extension may or may not be in left of the search bar. If this is so, then you need to enable the "Develop" tab for Safari.

4. After, that you will need to click "Allow Unsigned Extensions".

5. Finally, you will have to go to Safari > Preferences > Extensions and then click on the extension located in the left column.

6. Now the extension will be ready for use!
