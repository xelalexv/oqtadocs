---
title: Install
category: Getting Started
order: 2
---

#### Installation Script
In the [`hack` folder](https://github.com/xelalexv/oqtadrive/tree/master/hack) of the project, there's a `Makefile` that can perform all necessary installation steps. Currently, this only supports installation on *Linux*. For more details, have a look at the [install guide](https://github.com/xelalexv/oqtadrive/blob/master/doc/install.md). I highly recommend using the installer, since it's easy to make mistakes when doing the installation manually. But above all, it can also upgrade an existing installation. So it's easy to stay up to date with the latest releases. Run `make` without any options for detailed info about what the installer can do, and what settings you can make. If using the installer is really not an option, refer to the following steps.

#### Adapter Firmware
The *OqtaDrive* firmware needs to be flashed onto the *Arduino*. For this you can use for example the [*Arduino* IDE](https://www.arduino.cc/en/software), or if you're comfortable working with the command line, the [arduino-cli](https://github.com/arduino/arduino-cli). You find released versions of the firmware on the [release page](https://github.com/xelalexv/oqtadrive/releases), and the latest unreleased version [here](https://github.com/xelalexv/oqtadrive/blob/master/arduino/oqtadrive.ino).

#### *OqtaDrive* Daemon & Control Command
There is a single binary `oqtactl`. It can be run as *the daemon* to take care of everything that needs to be done on the daemon host side. It can also be run as a command to control the daemon, on the same host or over the network. The [release page](https://github.com/xelalexv/oqtadrive/releases) has `oqtactl` binaries for *Linux*, *MacOS* and *Windows*, available for different architectures. Download, extract, and copy the appropriate binary onto the daemon host and any other system from which you want to use it.

##### Daemon as `systemd` Service (optional)
If you want to automatically start the daemon whenever the daemon host boots, you can enable it as a *systemd* service. This of course only works if the *Linux* system is using *systemd* as its init system, which is the case with *Raspberry Pi OS* on the *Pi*. Create the following *unit file*, e.g. in `/etc/systemd/system/oqtadrive.service` (as `root`), adjusting the place holders for user and serial port accordingly:

```ini
[Unit]
Description=OqtaDrive Daemon
After=local-fs.target sysinit.target

[Service]
#Environment=LOG_LEVEL=debug OQTADRIVE_ADDRESS=oqtadrive-box:8080
ExecStart=/home/{user}/oqtactl serve -d {serial port to use} {extra arguments, if needed}
WorkingDirectory=/home/{user}
StandardOutput=inherit
StandardError=inherit
Restart=always
User=someone

[Install]
WantedBy=multi-user.target
```

If you want to set environment variables, for example to set debug log level, uncomment the `Environment` line and add variables as required. The list is space separated. Assignments that include space characters therefore need to be placed in double quotes. To finally activate the service, run:

```sh
sudo systemctl enable oqtadrive.service
sudo systemctl start oqtadrive.service
```

You can check on the status of the service with:

```sh
systemctl status oqtadrive.service
```

Logs can be retrieved with:

```sh
sudo journalctl -u oqtadrive
```

Whenever you change the unit file, do this to activate the changes:

```sh
sudo systemctl daemon-reload
sudo systemctl restart oqtadrive.service
```


#### Web UI
The *OqtaDrive* web UI is served by the daemon. If you want to enable it, extract the content of the `ui.zip` archive from the [release page](https://github.com/xelalexv/oqtadrive/releases) into the same directory where the `oqtactl` binary is located on the daemon host. When the daemon starts, it will pick up the UI resources and start serving the web UI on port `8888` by default. Have a look at `oqtactl serve --help` on how to change that.
