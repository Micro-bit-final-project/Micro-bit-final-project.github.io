---
layout: post
title:  "Main Breakdown"
date:   2020-12-18 19:00:00 +0000
categories: groundwork
author: Giuseppe Barillari
---

A big main function is often annoying to work with and it also is hard to read. Hence, the main function has been split into smaller functions. Furthermore, every function which was not the main function has been moved to a different file. A header file has been introduced, "serial_helper.h": this file contains the declarations of useful functions. Those functions are crucial for the communication between the computer and the microbit, amd their definitions are in "serial_helper.cpp".
