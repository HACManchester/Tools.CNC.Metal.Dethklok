; resume.g
; called before a job from SD card is resumed
M3 R1					; Restore the spindle speed from before the pause
G4 S10					; Wait for the spindle the get up to speed - 10 seconds
G1 R1 X0 Y0				; Go back to the last cut move X y Position - avoiding items on the spoilboard
G1 R1 X0 Y0 Z5 F6000	; Go to 5mm above position of the last cut move
G1 R1 X0 Y0 Z0			; Go to last position of the last cut move
