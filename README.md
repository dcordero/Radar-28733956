# tvOS-AVPlayerViewController-Bug
Project created to report bug on AVPlayerViewController

· Open radar: https://openradar.appspot.com/radar?id=4993738627612672

# Description
When a very long description is provided on AVMetadataCommonIdentifierDescription, AVPlayerViewController allows expanding the description in a separated ViewController. 

This ViewController is presented modally and, when it is presented, the AVPlayer on the background is paused.

# Expected 
AVPlayer continues playing on the background while the full description is presented modally.

# Steps

1.- Swipe down on Siri Remote to get the content information on the top navigation bar

![](metadata_info.png)

2.- Focus and select the description

![](metadata_description.png)

3.- 🔥 At this point the player was paused for no reason.
