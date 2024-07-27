# docker-virtualbox
Run VirtualBox (7.0) in a container

You will need VirtualBox kernel modules on the host system.<br>
The easiest way to get them is to install virtualbox on the host system (and remove it again.)

You can run it like this:

```docker run -d --rm --network=host --device /dev/vboxdrv:/dev/vboxdrv -e DISPLAY=unix:0 garo/docker-virtualbox```
 
 * `-d` : Run it as a daemon so that we can close the terminal where we launched it
 * `--rm` : Remove the container once it closes
 * `--network=host` : Make sure networking works
 * `--device /dev/vboxdrv:/dev/vboxdrv` : Use the kernel modules from the hostsystem for VirtualBox
 * `-e DISPLAY=unix:0` : Make sure virtualbox is visual on your X-server (you may need to run `xhost +` first if it doesn't work)
 * `garo/docker-virtualbox` : Name of the image
