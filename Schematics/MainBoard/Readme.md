# Readme

Rewiring of small metal CNC using a duet board

## PCB Design Rules

  * https://github.com/sethhillbrand/kicad_templates
  * https://support.jlcpcb.com/article/149-how-to-generate-gerber-and-drill-files-in-kicad


## Din Rail Clip

The Din rail clip was originaly sourced from

  * https://www.thingiverse.com/thing:4432713/files

Hole spacing is 20mm

## Duet Wifi

Ideas for the duet wifi mount bracket were sourced from the below.  
Although I wanted the Din clips to be more accessible.

  * https://www.thingiverse.com/thing:4593705/files

## Threaded inserts

  * M3 Threaded inserts - take M3 screws.  
    4mm holes are required.  
    At least 1.6mm clearance on the walls  
    Approx 6.7mm high

  * M4 Threaded inserts - take M4 screws
    5.6mm holes are required
    at least 2.1mm clearance on the walls
    Approx 8.1mm high

## FreeCad

TODO
For assemblies there are 3 main ones to look at

  * A2Plus
  * Assembly3
  * Assembly4

For Assembly1 / Assembly2 I believe these are no longer in use.
A2Plus is the traditional one folks have been using but lacks features in terms of constraints.
Assembly4 is more based around giving everything a LCS cordinate then matching it up which is a different way of connecting things.

Since FreeCad 0.20 I think Assembly3 is probably the best option.
After trying realthunder's fork and the official 0.20 with the Assembly3 addon
I think 0.20 with the addon may be more stable / less buggy

If using the realthunder fork version of freecad then make sure to use the conda version of the windows build

  * https://github.com/realthunder/FreeCAD/releases
  * https://www.youtube.com/watch?v=K0ATkxFhLFc
