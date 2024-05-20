# SmartCrop

# Requirements
To set up and run this Flutter project, ensure you have the following requirements met:

# Operating System
MacOS X
Linux
Windows
# Integrated Development Environment (IDE)
You can use any of the following IDEs with the Flutter SDK version 1.0.0+1:

Android Studio
Visual Studio Code (VSCode)
# Software and Tools
SDK: >=3.0.0 <4.0.0.
Git: For version control.

# Environment Setup
1. Install Flutter SDK
Download and install the Flutter SDK from the official Flutter website: Flutter Installation Guide.

2. Set Up Your IDE
Android Studio
Download and install Android Studio from here.
Open Android Studio and go to File > Settings > Plugins.
Search for and install the Flutter plugin.
Follow the prompts to install the Dart plugin.
Restart Android Studio to apply the changes.
Visual Studio Code
Download and install Visual Studio Code.
Open VSCode and go to the Extensions view by clicking on the square icon in the sidebar or pressing Ctrl+Shift+X.
Search for and install the Flutter extension.
Follow the prompts to install the Dart extension.
Restart Visual Studio Code to apply the changes.

3. Verify Flutter Installation
Open your IDE and use the integrated terminal or command palette to verify your Flutter installation:
- Android Studio
Open Android Studio.
Open a new terminal via View > Tool Windows > Terminal.
Run the following command to verify your Flutter installation:flutter doctor
This command checks your environment and displays a report of the status of your Flutter installation. Make sure all necessary dependencies are installed and properly set up.

- Visual Studio Code
Open Visual Studio Code.
Open the command palette by pressing Ctrl+Shift+P (Windows/Linux) or Cmd+Shift+P (Mac).
Type Flutter: Run Flutter Doctor and press Enter.
This command checks your environment and displays a report of the status of your Flutter installation. Make sure all necessary dependencies are installed and properly set up.

4. Setting Up Dart SDK
The Dart SDK is included in the Flutter SDK, so you don't need to install it separately. Ensure your pubspec.yaml file specifies the correct Dart SDK version range:

# Knowledge Prerequisites
A basic understanding of Dart and Flutter will help you navigate and modify the project codebase effectively.

# Project Setup

1. Android Studio
Open the project:

Go to File > Open and navigate to the directory where your project is located.
Select the project directory and click OK to open it.
Install dependencies:

Open the terminal in Android Studio via View > Tool Windows > Terminal.
Run the following command to install the necessary dependencies:
flutter pub get

Run the project:
Click on the Run button in the toolbar or press Shift+F10.
Select the target device/emulator and click OK to run the project.

2. Visual Studio Code
Open the project:

Go to File > Open Folder and navigate to the directory where your project is located.
Select the project directory and click Select Folder to open it.
Install dependencies:

Open the terminal in VSCode by pressing Ctrl+ (Windows/Linux) or Cmd+ (Mac).
Run the following command to install the necessary dependencies:
flutter pub get

Run the project:
Open the command palette by pressing Ctrl+Shift+P (Windows/Linux) or Cmd+Shift+P (Mac).
Type Flutter: Select Device to choose the target device/emulator.
Then, type flutter run lib/main.dart the project or the Project view, navigate to the lib folder and locate the main.dart file.
Open main.dart click on the Run button in the toolbar or press `Shift+F.

# Running the APK on an Android Device
If you have an APK version of the Flutter app, you can install and run it on an Android device using the following steps:

Prerequisites
Ensure that your Android device has USB debugging enabled. This can be done by going to Settings > Developer options > USB debugging.
Connect your Android device to your computer using a USB cable.
Steps to Install and Run the APK
Transfer the APK to your device:

Copy the APK file to your device's storage using a USB cable.
Install the APK:

On your Android device, navigate to the location where you copied the APK file.
Tap on the APK file to start the installation process.
You might need to enable the installation of apps from unknown sources. This can be done by going to Settings > Security > Unknown sources and enabling it.
Run the App:

Once the installation is complete, tap on the app icon in your app drawer to launch the app.
