---  
layout: post  
title: "Further engine minigame development"  
date: 2021-01-18 19:41:00 +0000  
categories: game
author: Giuseppe Barillari  
---  

The engine minigame has been implemented to use the DC motor in the inventor's kit. When the user blows on the fan, a voltage on the terminal of the DC motor is produced. It does not carry much current, but if the user blows hard enough it can easily reach 3V and slightly more. As a safety measure, a diode has been put in series between the analogue pin reading the voltage and the negative (black) terminal of the DC motor. Why the negative terminal? Due to the shape of the provided fan, when the user blows on it, the DC motor spins in its "reverse" direction. DC motors can spin both ways, it just depends on how they are wired. Since the fan shape makes the motor spin in "reverse", a negative voltage is produced on the positive (red) terminal of the motor while a positive voltage is produced on the negative terminal. Furthermore, sound effects have been implemented. (Insert schematic)
