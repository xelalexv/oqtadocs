---
title: Configure
category: Getting Started
order: 3
---

#### Adapter

##### Static Configuration
The adapter recognizes what it's plugged in to, i.e. *Interface 1* or *QL*. But it's also possible to force a particular machine. Have a look at the config section at the top of [`oqtadrive.ino`](https://github.com/xelalexv/oqtadrive/blob/master/arduino/oqtadrive.ino). There are a few more settings that can be changed. If you need to maintain several configs for various adapters, you can alternatively place your settings in separate header files and include as needed. The details for this are also explained in the config section of `oqtadrive.ino`. 

> Note: Whenever you make config changes, whether directly in `oqtadrive.ino` or in a config header file, don't forget to flash the firmware again.

##### Dynamic Configuration
A few adapter settings can also be changed on the fly via the `oqtactl` command (in the future also via the web UI). These settings are:

- *Client setting*, i.e. whether the adapter is connected to an *Interface 1* or a *QL*. This can be set with the `--client` option, when starting the daemon or when forcing a resync (see `oqtactl serve --help` and `oqtactl resync --help`).
- *Mapping of hardware drives*, unless `HW_GROUP_LOCK` in `oqtadrive.ino` is set to `true` (see `oqtactl map --help`).
- *Rumble level* of the vibration motor, if installed (see `oqtactl config --help`).

#### Daemon & Command
The `oqtactl` binary gets all its configuration from the passed command line arguments. Several of these arguments can alternatively be provided as environment variables. See `oqtactl {action} --help` to find out which settings support this, and for the names of the variables.

For example, the `oqtactl serve` command accepts an `--address` argument that allows you to set the address and port on which the daemon listens. If you change this setting from the default, you need to provide it whenever you run `oqtactl` to query or control the daemon. Since this can be quite tedious, you can set the address and port in environment variable `OQTADRIVE_ADDRESS`, e.g. in your `.bashrc` file if you're on *Linux* (*Windows* and *MacOS* provide ways of doing that as well, but I'm not familiar with those):

```sh
export OQTADRIVE_ADDRESS=oqtadrive-box:8080
```

The setting would now be automatically picked up when the daemon is started with `oqtactl serve`, as well as with any other invocation of `oqtactl` that needs to communicate with the daemon. You no longer need to specify the `--address` argument.
