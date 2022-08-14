# Todo

## Spindle Control

  * https://forum.duet3d.com/topic/24326/pwm-to-10v-via-e0heater-always-gives-10v/3
  * https://forum.duet3d.com/topic/4762/vfd-spindle-drive-0-10v-output/9
  * https://www.amazon.com/gp/product/B06XZXY9M2/ref=od_aui_detailpages00?ie=UTF8&psc=1
  * https://www.amazon.co.uk/1-3KHZ-Voltage-Module-Digital-Converter/dp/B0789738RC/
  * https://openbuilds.com/threads/workbee-cnc-w-duet2-and-chinese-spindle-control.14004/

  * I think the 10V is sourced from the VFD not the control board
  * Check the two outputs to the VFD for Forward and I think speed



## Spindle Cooling

  * Jim suggested a Peltier cooler for the water cooling of the spindle
    We need to look into antifreeze or something like what is used for the laser cutter

## 4th Axis

  * We need a 4 core cable (ideally shielded) for the 4th Axis
    This should be easy to make, it uses standard aeronautical connectors

## Stepper Drivers

  * Experiment with stepper subdivision / distance traveled on duet board

## End Stops

  * Currently there are no endstops

## Lighting

  * Setup new Led strip

## Duet WebUI

  * The original duet ui was based on the slate theme from bootswatch
    for firmware 2.02, this looks nicer than the current theme for 3.4 which is vue based

  * look at sbc setup with pi
    https://forum.duet3d.com/topic/17203/duet-2-ethernet-and-sbc/300?_=1658674995521

## Wiring

  * Confirm coil wiring on stepper motors.  
  * Wire in Duet Wifi to main PSU once cable arrives

## Brackets

  * Add spacer for corner of Duet board against metal
  * Add din rail bracket for back support
  * Add laser cut back plate for covering sd card / antenna opening

19.5mm between top of board and back plate
board is xxx thick
