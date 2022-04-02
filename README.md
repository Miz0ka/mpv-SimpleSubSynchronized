# mpv-SimpleSubSynchronized

Synchronize one subtitle track to another.

This synchronization can be used if you have at least one subtitle track suitable for your video.

A typical use case is when you get a video with subtitles but you want to use another sub file that is not synchronized at all and you need to match it perfectly with the audio/video. For example, a TV show with subtitles in your language and a subfile in the original language. 

# Usage

1- Set the already synchronized sub-track as secondary sub-track (With `Ctrl + Alt + r` or with the mpv option `--secondary-sid`)
2- Selection the sub-track that you want to synchronize
3- Synchronize then (with `Ctrl + Alt + s`) when there are lines on both of them 

There has to be corresponding text in both subtracks, so feel free to use `Ctrl + Shift + [Arrows Keys]` to synchronize approximately then and then make then match this script perfectly.
 
# Limitation

The delay is applied on all sub, so the reference sub does not match the video when you apply the synchronization.

# Keybinding:

* `Ctrl + Alt + r`: Set a subtrack as the secondary sub. Will be the reference of the synchronization
* `Ctrl + Alt + s`: Applies the right delay so that the main sub is synchronized with the secondary. Remove the secondary sub at the same time.

# Installation

Put the script `SimpleSubSync.lua` in your scripts folder, usually in:
*  Windows: `"%APPDATA%\mpv\scripts"`.
*  Linux and Mac: `"~/.config/mpv/scripts/"`.

# Screenshot
![ss1](https://user-images.githubusercontent.com/23367859/161397264-a7e0c60b-675e-44d5-b58b-91f6758b798a.jpeg)