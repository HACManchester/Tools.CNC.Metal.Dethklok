; pause.g
; called when a job from SD card is paused
G91				; relative positioning
G1 Z5 F360		; lift Z by 5mm
M5				; Turn off the spindle
G4 S10			; Wait for the spindle to stop - 10 seconds
G90				; absolute positioning
G1 X0 Y0 F6000	; go to X=0 Y=0
