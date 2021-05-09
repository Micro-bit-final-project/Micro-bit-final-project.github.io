---
layout: article
title:  "Hello game!"
date:   2020-12-26 10:55:00 +0000
categories: game
author: Giuseppe Barillari
---
The game development has started today! As of now the game only has a menu screen that displays "Press any button to continue". It is good to note that in order to properly use [microbit_serial][serial] as a module, its path needs to be added to the env variable "PYTHONPATH". The menu screen can be skipped by pressing any of the buttons connected to the microbit. Buttons are connected to pins 0, 3, 4, 6 with an active low logic; in fact, the pins of the microbit are connected through a 1k Ω resistor to +3.3V. See the schematic down below for reference.
<br>
<br>
![alt text](/res/schematic-2020-12-26.png "Schematic")

[serial]: https://github.com/Micro-bit-final-project/microbit_serial/
