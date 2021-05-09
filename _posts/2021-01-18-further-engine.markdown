---  
layout: article  
title: "Further engine minigame development"  
date: 2021-01-18 19:41:00 +0000  
categories: game
author: Giuseppe Barillari  
---  

The engine minigame has been implemented to use the DC motor in the inventor's kit. When the user blows on the fan, a difference of potential is generated on the terminals of the DC motor. It does not carry much current, but if the user blows hard enough, it can easily reach 3V and slightly more. A diode has been put in series between the analogue pin reading the voltage and the negative (black) terminal of the DC motor as a safety measure. Why the negative terminal? Due to the shape of the provided fan, when the user blows on it, the DC motor spins in its "reverse" direction. DC motors can spin both ways. It just depends on how they are wired. Since the fan shape makes the motor spin in "reverse", a negative voltage is produced on the motor's positive (red) terminal while a positive voltage is produced on the negative terminal. Furthermore, sound effects have been implemented.
<br>
<br>
![alt text](/res/motor-schematic.png "Schematic")

