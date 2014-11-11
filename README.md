Diving into iOS Development
================

This is a simple quiz game that shows you the basic concepts of iOS development. The files of the application are heavily commented. This is to show the responsibilities of different classes, methods, and files.

This application was developed in conjunction with Columbia's [ADI](http://adicu.com) for the event [Diving into iOS Development](https://www.facebook.com/events/745569575513884/).

Installation
------------
To run this application on your computer (Mac's only!), follow these steps:

1. Download XCode. Installation and usage instructions can be found [here](https://developer.apple.com/xcode/).
2. Clone this repository by running `git clone https://github.com/mjp2220/SimpleQuizGame.git` on your computer.
3. In XCode, click `File->Open` and select the folder that you cloned this repository into to.
4. After selecting either an iPhone 5 or an iPhone 5S from the dropdown window, click `Project->Run`. The simulator should open and you should see the application running!

Important Files
------------
    SimpleQuizGame/
    ├── AppDelegate.m
    ├── QuizQuestion.m
    ├── ViewController.m
    ├── Base.lproj/
    │   ├── LaunchScreen.xib
    │   ├── Main.storyboard
    ├── main.m
    └── Info.plist


-   `AppDelegate.m` - The master of your application. Handles transitions between views, holds application-wide data, and handles interactions with the rest of the device.
-   `QuizQuestion.m` - The model in the MVC framework. Encapsulates the data that we need for our quiz game.
-   `ViewController.m` -  The controller in the MVC framework. Intermediates between user actions and the data of an application, responding to things like touch events with changes to the user interface.
-   `Base.lproj` - Holds all the storyboard and xib files, which comprise the views in the MVC framework. Everything you visually see (text boxes, buttons, etc.) are defined in the files in this directory.
    -   `LaunchScreen.xib` - The screen that appears when the application is first launched. We edit these using the interface builder.
    -   `Main.storyboard` - Our main storyboard, which can have multiple views in a single file. Helps to eliminate the need for multiple .xib files by keeping all screens in a single file.
-   `main.m` - A simple C file to run the application. Needed because C requires their to be a `main` method in every C application. Don't ever touch this.
-   `Info.plist` - A list of properties about your application, including name, version number, etc. This can be used for things like API keys, etc.


