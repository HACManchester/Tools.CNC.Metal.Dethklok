# Old Hardware

## Control Board

The old control board appears to be one of these

  * https://www.amazon.co.uk/Controller-100Khz-Breakout-Engraving-Stepper/dp/B08BJTB1GQ/
  * https://buildyourcnc.com/item/electronicsAndMotors-electronic-component-breakout-Mach3-USB-Board

As far as we know this will only work with mach3 or DrufelCNC on a Windows Box.  
They tend to be known as a RNR motion control card.  
With Mach3 in demo mode this seems to jog also it can detect EStop presence.  

## Stepper Drivers

The original stepper drivers are TB6560's  
There is a 7 pin jumper set the same way on all steppers

    * S1 - Off - M1 Excitation mode setting input
    * S2 - Off - M2 Excitation mode setting input
    * S3 - On  - DCY1 Current decay mode setting input
    * S4 - On  - DCY2 Current decay mode setting input
    * S5 - On  - TQ1 Torque setting input (current setting)
    * S6 - Off - TQ2 Torque setting input (current setting)
    * S7 - On  - ?? connected to a GAL microcontroller

  * https://www.cnczone.com/forums/stepper-motors-drives/338540-tx14207-schematic.html
  * https://pdf1.alldatasheet.com/datasheet-pdf/view/548480/TOSHIBA/TB6560AFG.html

For M1 / M2 we can ignore these as this is just the type of stepper motor
in terms of the number of windings

Decay mode is set to 100%  

### Current Setup

For the AHQ version of this chip the max current is 3A  
Current = 0.5V / Rnf  
where Rnf is the resistance for Nfa / Nfb to ground  
this measures at around 0.23 ohms  
0.5/0.3 = 1.66A

Motor current I think is set to 75% for the jumpers
75% of 1.66A is about 1.2A  
Probably best to use this as a starting point and see how hot the steppers get

