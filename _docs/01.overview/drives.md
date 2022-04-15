---
title: Hardware Drives
category: Overview
order: 2
---

![drives]({{site.baseurl}}/images/oq-config-internal.jpg)

*OqtaDrive* can coexist with actual hardware *Microdrive* units. If you want to combine *OqtaDrive* with hardware *Microdrive* units, then there are essentially two choices for placing the *OqtaDrive* adapter - either at the end of the drive chain or at the start. Here are a few considerations and pros & cons for both options.

#### *Last in Chain*

##### Pros
- simple - adapter just plugs into the *Interface 1*, *QL*, or *Microdrive* unit edge connector
- requires just one edge connector plug
- no hardware modifications needed

##### Cons
- hardware *Microdrive* units are always upstream of the adapter, and cannot be turned off or mapped into different slots; on the *QL* for example this means that *OqtaDrive* can only emulate `mdv3` through `mdv8`

#### *First in Chain*

##### Pros
- hardware *Microdrive* units can be freely moved as a group within the chain, or turned off completely

    > To take advantage of drive mapping, you need to route the `COMMS_OUT` signal from the adapter to the `COMMS` input of the first of the hardware drives, and make a couple of settings in the config section at the top of `arduino/oqtadrive.ino`. Tom Dalby's *Micro* and *Standalone* PCBs (see [build section]({{site.baseurl}}/02.getting-started/build)) are prepared for this.

##### Cons
- requires an additional edge connector (plug) for connecting hardware *Microdrive* units; alternatively, the adapter can be installed into an *Interface 1* or *QL*, but cannot be used with other machines in that case
- for the *QL*, this requires modifying the hardware
