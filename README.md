# Using Xcode to develop iOS ARKit Swift playgroundbooks

The trick is to develop an iOS ARKit _application_, and once that is
working, convert it to a Swift playgroundbook.

The benefit of doing this is you can use the full power of Xcode:

+ Use Xcode's editor to write your app.
+ Use Xcode's specialized views to manage your Scenekit art assets.
+ Use Xcode's debugger to debug your app.

# Limitations

- You can't use Interface builder (no storyboards or nibs).

# How to convert your app to a playground book

1. Open terminal
2. cd to the "arkit2" directory.
3. run `makePlayground.sh`

This will create an "arkit.playgroundbook" in the ".." directory.

# How to deploy your playground book.

1. Open Finder
2. Open a Finder window and choose "Airplay" from the favorites menu.
3. Turn on your iOS device.
4. In a second or so it should appear in the "Airplay" Finder window.
5. Locate your arkit.playgroundbook
6. Drag-and-drop arkit.playgroundbook onto your iOS Device icon in the
Airplay Finder window.
7. This should transfer the playground book and automatically launch the Playground app on the iOS Device.

