# tvOS-AVPlayerViewController-Bug
Project created to report bug on AVPlayerViewController


# Description
When a very long description is provided on AVMetadataCommonIdentifierDescription, AVPlayerViewController allows expanding the description in a separated ViewController. 

This modal ViewController is presented modally and when is presented the player on the background is paused.

# Expected 
AVPlayerViewController continues playing on the background while the full description is presented modally.

# Steps

1.- Swipe down on Siri Remote to get the content information on the top navigation bar

![](metadata_info.png)

2.- Focus and select the description

![](metadata_description.png)

3.- 🔥 At this point the player was paused for no reason.
