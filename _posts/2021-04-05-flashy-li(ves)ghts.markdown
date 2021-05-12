---
layout: article
title: "Flashy li(ves)gths"
date: 2021-04-05 11:52:00 +0000
categories: game
author: Giuseppe Barillari
---

A life system has just been introduced into the game. In the beginning, the player is given 8 lives. Anytime the user loses a minigame, the number of lives decreases by one. The microbit uses a 74HC594 shift register to control 8 LEDs, to remind the user of how many lives they still have. When the user loses all 8 lives, the game restarts from the main menu. Whenever the game is in the main menu stage, the number of lives is reset to 8, and all the LEDs are lit. When the number of lives decreases, the number of lit LEDs decreases accordingly. See schematic below.
<br>
<br>
![Schematic](/res/shift-register-schematic.png "Schematic")
<br>
Note that the blue flags symbolise the microbit's pins.
