# docker-virtualbox
Run VirtualBox (6.1) in a container

You can run it like this:

```docker run -d --rm --network=host --device /dev/vboxdrv:/dev/vboxdrv -v $HOME/.Xauthority:/root/.Xauthority -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix:0 garo/docker-virtualbox```
 
 * `-d` : Run it as a daemon so that we can close the terminal where we launched it
 * `--rm` : Remove the container once it closes
 * `--network=host` : Make sure networking works
 * `--device /dev/vboxdrv:/dev/vboxdrv` : Use the kernel modules from the hostsystem for VirtualBox
 * `-v $HOME/.Xauthority:/root/.Xauthority -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix:0` : Make sure virtualbox is visual on your X-server (you may need to run `xhost +` first if it doesn't work)
 * `garo/docker-virtualbox` : Name of the image
