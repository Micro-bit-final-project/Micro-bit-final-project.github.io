---
layout: article
title:  "The micro:bit receives!"
date:   2020-12-15 20:00:00 +0000
categories: groundwork
author: Giuseppe Barillari
---

I had previously written a simple test python script to run on the microbit, but we soon noticed that micropython slowed down the development due to its low flexibility and extensive memory usage. We decided to switch to C++ programming on the microbit, thanks to the available [runtime][run]. Today I worked on an initial program that lets the microbit read data coming to its serial buffer. The message then scrolls on the microbit's LEDs matrix.

[run]: https://tech.microbit.org/software/runtime/
