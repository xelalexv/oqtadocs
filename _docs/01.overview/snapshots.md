---
title: Loading Snapshots
category: Overview
order: 3
---

#### *Z80* and *SNA*
*OqtaDrive* can directly load *Spectrum* `.z80` and `.sna` snapshot files. Snapshots can be loaded as if they were cartridge files. *OqtaDrive* automatically converts them on the fly to *MDR* images, using a *Golang* port of Tom Dalby's [Z80onMDR_Lite](https://github.com/TomDDG/Z80onMDR_lite). This is an integral part of *OqtaDrive*, so no additional software needs to be installed.
