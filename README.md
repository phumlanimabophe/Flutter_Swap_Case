sWAP cASE App
This repository contains a Flutter app named sWAP cASE, which is a simple demonstration of text manipulation using the swapCase function. The app allows users to input a username and an email address. It then displays the username with the first letter capitalized and the email address with swapped case (lowercase characters become uppercase and vice versa).

App Demo

Table of Contents
Installation
Usage
Functionality
Contributing
License
Installation
To run the app locally, follow these steps:

Make sure you have Flutter installed on your system.
Clone this repository to your local machine using git clone https://github.com/phumlanimabophe/Flutter_Swap_Case.git.
Navigate to the project directory using the command line.
Run flutter pub get to install the required dependencies.
Connect an emulator or a physical device.
Run flutter run to start the app on the connected device.
Usage
Upon launching the app, you'll be presented with a user interface consisting of an image and a card. The card contains an input field for the username and another for the email address. After entering both the username and email, click the "Send" button to submit the information.

The app will then display the entered username with the first letter capitalized and the email address with swapped case. If you click the refresh button in the app bar, it will clear the inputs and the displayed information.

Functionality
The app's main functionality revolves around the swapCase and swapCaseFirstValue functions, which manipulate the text as follows:

swapCase(String s): This function takes a string s as input and returns a new string where uppercase characters are converted to lowercase and vice versa.

swapCaseFirstValue(String s): This function takes a string s as input and returns a new string where the first letter is capitalized while keeping the rest of the string unchanged.

Contributing
Contributions to this repository are welcome. If you find any issues or have ideas to enhance the app, feel free to open an issue or submit a pull request. Make sure to follow the existing coding style and guidelines.

License
This project is licensed under the MIT License. You are free to use, modify, and distribute the code as per the terms of this license.

