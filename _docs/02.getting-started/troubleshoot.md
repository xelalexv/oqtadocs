---
title: Troubleshoot
category: Getting Started
order: 4
---

#### *Use the Log, Luke!*
Whenever you hit a problem, first thing to do is to check the daemon log. For this, run the daemon preferably with `debug` log level, e.g.:

```sh
LOG_LEVEL=debug oqtactl serve -d /dev/ttyUSB0 [other options]
```

If you're running the daemon as a `systemd` service, you need to edit the unit file accordingly, and restart the service. For many problems, the daemon log should already give you good hints about what's going on. It's also important when reporting an issue over at *GitHub*.

#### Check the Online Help
The `oqtactl` binary provides online help for all actions. Just run `oqtactl --help` to get a list of the available actions, and `oqtactl {action} --help` for finding out more about a particular action. Maybe there are additional options that you weren't aware of, and that can help you work around a problem.

#### Make Sure *OqtaDrive* Correctly Recognizes Your Machine
When the *OqtaDrive* adapter starts up, it auto-detects what it's connected to, i.e. *Interface 1* or *QL*, and configures itself accordingly. This may fail in certain situations, so it's one of the first things to check. The daemon log and also the web UI show what machine has been detected.

If this is incorrect, re-sync the adapter, either via the web UI or `oqtactl resync`. The latter method also allows you to force a particular machine with the `--client` option. If you're always using the adapter with only one type of machine, you can also hard-code that in the adapter config. Check the config section at the top of `oqtadrive.ino`, and look for the `FORCE_IF1` and `FORCE_QL` settings. You can also force a particular machine with the `--client` option when starting the daemon. 

> *Tip*: When using the adapter with a *Spectrum* + *Interface 1*, make sure to power up the adapter after or together with the *Spectrum*, but not before. Otherwise it will auto-detect a *QL*.

#### Common Issues
Check this [list of common issues](https://github.com/xelalexv/oqtadrive/blob/master/doc/troubleshoot.md#topics) at the project home.

#### Check *GitHub* Issues & Discussions
If you can't resolve the problem, have a look at [reported issues](https://github.com/xelalexv/oqtadrive/issues) and [discussions](https://github.com/xelalexv/oqtadrive/discussions) at the project home. Maybe the problem you're seeing has been reported and discussed before. If that doesn't yield anything, consider starting a discussion yourself, or if you're sure what you're seeing is a bug, open an issue.
