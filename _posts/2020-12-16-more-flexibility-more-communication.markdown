---
layout: article
title:  "More flexibility, more communication"
date:   2020-12-16 20:00:00 +0000
categories: groundwork
author: Giuseppe Barillari
---

Due to synchronisation issues, I had to find a workaround not to lose serial data. The workaround is the implementation of a confirmation logic during the serial communication. Whenever the microbit writes to the serial, it will wait for a reply from the computer to write more data. Moreover, the computer will wait for confirmation from the microbit before writing data to the serial buffer.
The microbit sends out a serial packet containing a simple "Y" once it is ready to continue. The computer does the same. However, the computer can also send an "R" to let the microbit know some data is coming so that it can listen.
