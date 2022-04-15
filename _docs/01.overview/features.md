---
title: Main Features
category: Overview
order: 1
---

![basic]({{site.baseurl}}/images/oq-config-external.jpg)

#### What is *OqtaDrive*?
*OqtaDrive* emulates a bank of up to 8 *Microdrives* for use with a *Sinclair Spectrum* with *Interface 1*, or with a *QL*. The goal is to functionally create a *faithful reproduction of the original*. On the *Spectrum*/*QL* side, operating the emulated *Microdrives* should feel exactly the same as using the real thing. So by definition, it does not try to compete with more "modern day" mass storage solutions for *Spectrum* and *QL*.

*OqtaDrive* is built around an *Arduino* that connects via its GPIO ports to the *Microdrive* interface and via serial connection to a daemon running on a host machine. This daemon host could be anything, ranging from your PC to a small embedded board such as a *RaspberryPi Zero*, as long as it can run a supported OS (*Linux*, *MacOS*, *Windows*). The same *Arduino* can be used with both *Spectrum* and *QL*, without any reconfiguration.

The adapter itself does not provide a UI. Instead the daemon exposes a *REST API* endpoint. This can be used by different tools for controlling the daemon. Currently, there's a command line tool and a web UI. Just open it in your browser, be it on your PC or your phone, and load your cartridges.

#### What Can I Do With This?
*OqtaDrive*'s architecture makes it very flexible, so many setups are possible. The simplest one would be just the *Arduino* that connects your *Interface 1* or *QL* with your PC or Mac, and you manage everything from there. If you're rather looking for a standalone solution, you could for example run the daemon on a *RaspberryPi Zero W*, and place this into a *Microdrive* or 3D printed case. Have a look at the [build section]({{site.baseurl}}/02.getting-started/build) for available options.

##### Feature Overview

- Supports all *Microdrive* operations on *Spectrum* with *Interface 1* and on *QL*, no modifications or additional software required
- Can co-exist with actual hardware *Microdrive* units, which can be mapped on demand to any slot in the drive chain or turned off
- Daemon can run on *Linux*, *MacOS*, and *Windows*
- Control daemon via command line interface and web UI
- Load & save from/to *MDR* and *MDV* formatted cartridge files
- For *Spectrum*, *Z80* and *SNA* snapshot files can be directly loaded, no additional software required
- All supported formats can also be loaded from *zip*, *gzip*, and *7z* compressed files
- Directly load cartridge files from the web
- Store your cartridge collection on the daemon host and search & load from any client
- Connect a *rumble motor* for authentic sound ;-)
- List virtual drives & contents of cartridges
- Hex dump cartridge contents for inspection

Due to the minimal hardware required, *OqtaDrive* is also very cost-efficient. In the simplest setup, you only need an *Arduino Nano* and a few resistors and diodes. Additionally, if you own a *Spectrum* and a *QL*, you can use it with both, no need to have dedicated adapters. But above all, there's the fun involved in building this!