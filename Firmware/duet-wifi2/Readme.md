# Readme

Configuration and firmware for the duet wifi board

  * https://openbuilds.com/threads/workbee-cnc-w-duet2-and-chinese-spindle-control.14004/
  * Currently it's on 172.16.0.139

## TODO

### Calibration

So far I've managed to adjust the Y axis slightly to get it more accurate with 123D blocks
I think to try out backlash or orthogonal compensation better we need to mill out a part then measure it's dimensions
(maybe a test part using wax)

  * https://docs.duet3d.com/en/User_manual/Tuning/Orthogonal_axis_compensation
  * https://docs.duet3d.com/User_manual/Reference/Gcodes#m425-configure-backlash-compensation


### Probe

  * We could do with a probe for milling PCB's
    This could be done via the mesh level compensation on a copper board
  * For the end stops we could upgrade them to inductive ones

### Water Cooling

  * Water pump and radiator attached
  * Piping is required however and wiring

  * The pipe to the spindle I believe is 8mm outer dia, 5mm inner dia
  * Pump is 6.3 inner, 8.9 outer - but has a screw thread that can be used instead I think 12mm
  * Radiator is 6.13 inner, 9.7 outer

There's a better radiator with 12mm inner dia screw thread

### Support Brackets

  * More clamps / support brackets are needed, initially make some out of wood held down with m6 bolts

### Spanners

Need

  * 10mm spanner for bolts
  * 13mm spanner open ended
  * 17mm ring spanner
