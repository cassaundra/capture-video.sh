# capture-video.sh

Simple script to to capture video from a DSLR for use in OBS and such. I haven't tested this anywhere besides my machine (Fedora 29), but maybe someone else will stumble upon this and find it useful :)

Currently it outputs to `/dev/video2`, though I'd like to autodetect that device in the future so this works more universally.

## Requirements
- [v4l2loopback](https://github.com/umlaeute/v4l2loopback). Instructions for building and installing from source are included in its README
- gphoto2 (`dnf install gphoto2` should be sufficient on Fedora, I believe)
