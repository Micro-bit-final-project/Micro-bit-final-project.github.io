---
layout: post
title:  "Groundwork"
date:   2020-12-13 18:00:00 +0000
categories: groundwork
author: Giuseppe Barillari
---
Today I focused on the necessary groundwork to begin our project. Two repositories in our [GitHub organization][org] store today's work, and they are [microbit_test_unit](https://github.com/Micro-bit-final-project/microbit_test_unit) and [microbit_serial](https://github.com/Micro-bit-final-project/microbit_serial).
The test unit is a python script that should be used to check if a basic serial communication between the microbit and the computer can be established. If so, a microbit image should pop up on the screen and rotate accordingly to the microbit plugged in the computer via USB.
The serial repository contains a python script (that we plan on to transforming in a module) that provides functions to connect and retrieve data from the microbit's serial port.
The test unit is dependant on the microbit_serial, but not vice-versa. The microbit_serial project can be used with any other script and only requires pyserial as a dependency.

[org]: https://github.com/Micro-bit-final-project/
