; Configuration file for Duet WiFi (firmware version 3.3)
; executed by the firmware on start-up

; General preferences
M575 P1 S1 B57600				; enable support for PanelDue
G21								; Work in millimetres
G90								; send absolute coordinates...
M550 P"DeathKlok-Hacman"		; set printer name
M453							; Switch to CNC Mode
M564 S1 H1						; Disable jog commands when not homed
;M564 S0 H0						; Allow movement without homing - MAINTENANCE
M140 H-1						; disable heated bed (overrides default heater mapping)

; Network
M552 S1	P"HACMAN-CNC"			; enable network
M586 P0 S1						; enable HTTP
M586 P1 S0						; disable FTP
M586 P2 S0						; disable Telnet

; Drives
M569 P0 S1						; physical drive 0 goes forwards
M569 P1 S1						; physical drive 1 goes forwards
M569 P2 S1						; physical drive 2 goes forwards
M584 X0 Y1 Z2					; set drive mapping

M350 X16 Y16 Z16 I1							; configure microstepping with interpolation
M92 X800.00 Y800.00 Z800.00					; set steps per mm
M566 X900.00 Y900.00 Z60.00					; set maximum instantaneous speed changes (mm/min)
M203 X1000.00 Y1000.00 Z180.00				; set maximum speeds (mm/min)
M201 X500.00 Y500.00 Z20.00					; set accelerations (mm/s^2)
M906 X2000 Y2000 Z2000 I50					; set motor currents (mA) and motor idle factor in per cent
M84 S300									; Set idle timeout in seconds

; Axis Limits
M208 X0 Y0 Z-63 S1                               ; set axis minima
M208 X160 Y275 Z0 S0                         ; set axis maxima

; Endstops
M574 X1 S1 P"^xstop"                           ; configure switch-type (e.g. microswitch) endstop for low end on X via pin ^xstop
M574 Y1 S1 P"^ystop"                           ; configure switch-type (e.g. microswitch) endstop for low end on Y via pin ^ystop
M574 Z2 S1 P"^zstop"                           ; configure switch-type (e.g. microswitch) endstop for high end on Z via pin ^zstop

; Z-Probe TODO
;M558 P0 H5 F120 T6000			; disable Z probe but set dive height, probe speed and travel speed
;M557 X15:215 Y15:195 S20		; define mesh grid

; Emergency Stop
M950 J1 C"!^e1stop"				; Setup E1 as an input
M581 P1 T0 R0					; Assosicate Input1 with Trigger 0 for EStop, R=0 for all cases, this triggers an M112
M582 T0							; This checks in cases where the board reboots but the estop switch is still pressed

; Tools
M950 R0 C"bedheat" L3000:23940 Q1000	; Spindle Output R0, 24000 Max RPM, PWM Frequency 1000hz
M563 S"Spindle1" P0 R0			; Define Tool 0 (our Spindle)
G10 P0 X0 Y0 Z0					; Set tool 0 axis offsets
G10 P0 R0 S0					; Set initial tool 0 active and standby temperatures to 0C
;M563 P1 S"XYZ-Probe"			; Define XYZ Touch Probe Tool

; Misc
M911 S22 R23 P"M913 X0 Y0 G91 G1 Z3 F1000"	; set voltage thresholds and actions to run on power loss
M501										; Load Stored Parameters

; TODO 4th Axis
; M569 P3 S1		; physical drive 3 goes forwards
; M584 A3 R1		; set drive mapping - rotational axis
; M350 A16 I1		; configure microstepping with interpolation
; M92 A800.00		; set steps per mm
; M566 A900.00		; set maximum instantaneous speed changes (mm/min)
; M203 A1000.00		; set maximum speeds (mm/min)
; M201 A250.00		; set accelerations (mm/s^2)
; M906 A1200 I100	; set motor currents (mA) and motor idle factor in per cent

; Testing - Spindle
; M3 S12000		; spindle Half speed
; M3 S24000		; spindle Full speed

; Testing Axis
; M84			; Disable stepper timeout
; G1 A360		; One full rotation A Axis
; G1 A3600		; Ten full rotations A Axis
