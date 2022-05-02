---
title: Build
category: Getting Started
order: 1
---

> Before building *OqtaDrive* yourself, please carefully read the [hardware section](https://github.com/xelalexv/oqtadrive#hardware) at the project home! It contains important instructions & notes. Not following these may break your vintage machine and/or the *Arduino*! However, bear in mind that all the information here and at the project home is published in good faith and for general information purpose only. I do not make any warranties about the completeness, reliability, and accuracy of this information. Any action you take upon the information you find here, is strictly at your own risk. I will not be liable for any losses and/or damages in connection with the use of *OqtaDrive*.

If you just want to try out *OqtaDrive*, you can simply build the adapter on a breadboard, following [the schematics](https://github.com/xelalexv/oqtadrive#circuit). The circuit is not very complicated and can be set up quickly.

If you rather want to build a proper device for continued use with your *Spectrum* and *QL*, [Tom Dalby](https://tomdalby.com/other.html) has created several PCBs and 3D print models of cases for different configurations you can choose from. Clicking on the PCB images or photos below will take you the respective resources on *PCBWay*, *Thingiverse*, *GitHub*, or wherever the corresponding artifacts are maintained.

![OtaDrive family]({{site.baseurl}}/images/oq-pcbs.jpg)

#### Micro
This is the smallest member of the *OqtaDrive* PCB family created by Tom. If you're planning on running the daemon on your PC or Mac, and want the smallest possible adapter, this is the one. It works with *Spectrum* and *QL*. Tom also created a 3D print model for a case.
<table>
    <tr>
        <td width="45%"><a href="https://github.com/TomDDG/OqtaDrive-uPCB-v1.2" target="_blank"><img src="{{site.baseurl}}/images/pcb-micro.png" /></a></td>
        <td width="55%"><a href="https://www.thingiverse.com/thing:4971475" target="_blank"><img src="{{site.baseurl}}/images/oq-micro.jpg" /></a></td>
    </tr>
</table>

#### Lite & Mini
> These two PCB were early prototypes create by Tom. They are included here for completeness, to show the evolution of PCB development.

The *Lite* and *Mini* are a little large than the *Micro*, and have two edge connectors, one for *Spectrum* and one for *QL*. This has the advantage that the rear of the unit with the USB connector will always point to the back when you connect to either one. That's because an *Interface 1* has its edge connector on the left hand side, the *QL* on the right hand side. The rumble motor is not supported on these PCBs, as they were created before that feature was added. Otherwise, there's no difference with the *Micro*.

<table>
    <tr>
        <td width="55%"><a href="{{site.baseurl}}/assets/oqtadrive_lite_2021-07-12.zip" ><img src="{{site.baseurl}}/images/pcb-lite.png" /></a></td>
        <td width="45%"><a href="{{site.baseurl}}/assets/oqtadrive_mini_2021-07-13.zip" ><img src="{{site.baseurl}}/images/pcb-mini.png" /></a></td>
    </tr>
</table>

#### Standalone for *Spectrum* and *QL*
This is the fully fledged, complete solution including a *RaspberryPi Zero W (1 or 2)* for running the daemon. Great choice if you want a self contained setup you can use with your *Spectrum* and/or *QL*, away from your PC or Mac. A 3D print model for a case is available as well. The PCB however also fits into the original Microdrive case.

<table>
    <tr>
        <td width="45%"><a href="https://www.pcbway.com/project/shareproject/Sinclair_ZX_Spectrum___QL_OqtaDrive_Standalone_v1_2b_PCB.html" target="_blank"><img src="{{site.baseurl}}/images/pcb-standalone.png" /></a></td>
        <td width="45%"><a href="https://www.thingiverse.com/thing:4917845" target="_blank"><img src="{{site.baseurl}}/images/case-standalone.png" /></a></td>
    </tr>
</table>

##### Using an *Arduino Pro Mini*
Since in the standalone configuration, the USB port of the *Arduino Nano* is not needed, it's also possible to use an *Arduino Pro Mini* instead, which comes without the USB port. It's important to note the different pin out though. **It's not a drop-in replacement!** A few patch wires however are enough to fix this (pins `D10`, `D11`, `D12`, `A0`, and `A4`). In below example, the `D10` and `A0` pins of the *Pro Mini* were not fitted, since they would otherwise connect with the wrong signals on the PCB (`A0` and `A4`) and block the patch wires. Software-wise the *Pro Mini* is fully compatible.

<table>
    <tr>
        <td width="45%"><img src="{{site.baseurl}}/images/oq-promini-1.jpg" /></td>
        <td width="45%"><img src="{{site.baseurl}}/images/oq-promini-2.jpg" /></td>
    </tr>
</table>

#### *QL* Add On
This PCB is installed into the case of the *QL*, the right choice if you want *OqtaDrive* permanently available in your *QL*. It replaces drive 1, but drive 2 can still be used and freely assigned to any drive number, or turned off. Tom also designed a 3D printed mounting bracket for the installation.

<table>
    <tr>
        <td width="50%"><a href="https://www.pcbway.com/project/shareproject/OqtaDrive_QL_v1_2_5bca1c12.html" target="_blank"><img src="{{site.baseurl}}/images/pcb-ql.png" /></a></td>
        <td width="50%"><a href="https://www.thingiverse.com/thing:5321965" target="_blank"><img src="{{site.baseurl}}/images/case-ql.png" /></a></td>
    </tr>
</table>

#### Other Options
I personally also installed an *OqtaDrive* adapter into an *Interface 1*, handwiring the necessary connections. The *Arduino Nano* fits nicely between the serial port and network connectors.

<a href="https://github.com/xelalexv/oqtadrive/discussions/15" target="_blank"><img src="{{site.baseurl}}/images/oq-if1.jpg" /></a>
