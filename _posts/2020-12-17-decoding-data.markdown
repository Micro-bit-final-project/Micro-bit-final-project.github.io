---
layout: article
title:  "Decoding data"
date:   2020-12-17 19:00:00 +0000
categories: groundwork
author: Giuseppe Barillari
---

Since the data passed through serial is passed as strings, the game needed to translate the string into numbers. So a function to convert the string into an array of float numbers has been implemented.
The function removes the carriage return and line feed characters from the received strings. It then removes the parenthesis since the data comes formatted as an array and splits the string at every "," occurrence.
Each split item is then converted and stored in a float list.
