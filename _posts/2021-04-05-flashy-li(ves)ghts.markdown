---
layout: article
title: "Flashy li(ves)gths"
date: 2021-04-05 11:52:00 +0000
categories: game
author: Giuseppe Barillari
---

A life system has just been introduced into the game. At the beginning the player is given 8 lives. Anytime the user loses a minigame the number of lives decreases by one. To remind the user of how many lives they still have, the microbit uses a 74HC594 shift register to control 8 LEDs. When the user loses all 8 lives the game restarts from the main menu. Any time that the game is in the main menu stage the number of lives is reset to 8 and all the LEDs are lit. When the number of lives decreases, the number of lit LEDs decreases accordingly. See schematic below.
![Schematic](/res/shift-register-schematic.png "Schematic")
