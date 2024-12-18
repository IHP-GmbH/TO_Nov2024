
*************
iHPs IO-CELLs
*************

for ESD protection the analog-IO-cells where used. the cells support two voltages. a 3.3V IO and a 1.8V core-voltage. 

my problem using the cells was, that the openPDK LVS scripts didn't could verify the .GDS with the provided .CDL. so that simply hope, they are correct used.

one problem i had, using this cells was the space they demand. i was trying to make a minimal chip of about 0.5x1mm. but the filler.py-script wasn't able to produce enough GatPoly-fill to pass the maximum-DRC script. 

this IO infrastructure needs at least a 1x1mm chip (according my experience).
