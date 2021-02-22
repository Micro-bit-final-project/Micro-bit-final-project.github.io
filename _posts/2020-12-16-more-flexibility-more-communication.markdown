---
layout: article
title:  "More flexibility, more communication"
date:   2020-12-16 20:00:00 +0000
categories: groundwork
author: Giuseppe Barillari
---

Due to synchronisation issues, a workaround not to lose serial data had to be found. The workaround is the implementation of a confirmation logic during the serial communication. Whenever the microbit writes to the serial, it will wait for a reply from the computer to write more data. And vice-versa, the computer will wait for confrimation from the microbit before writing data to the serial buffer.
