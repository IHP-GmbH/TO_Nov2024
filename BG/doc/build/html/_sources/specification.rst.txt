CMOS only designs
#################


this is a chip to test the following circuits:

1. an 3.3V OTA 
    - an input common-mode-range from < VSS until VDD - 500mV
    - bias current programmable via resistor
    - gain about 70dB
    - offset in < 5mV
2. a band gap design using this OTA.
    - option to make an low-pass
    - option to adjust the delta temperature coefficient zero
3. a shunt-regulator for 3.3V
    - should heat until 50mA
    - option to disable and measure the shunt current
4. a high dropout 1.8V regulator
    - should be powered by the 3.3V
    - low output impedance
    - high power supply rejection
5. two different mmW detector designs
    - dipole/diode detector
    - a 1 diode design as reference of a
    - 10 serial connected diode design
6. iHPs standard IO-cells for analog signal, VSS, VDD and IOVSS, IOVDD
7. a shottky diode, for measurments
8. a fuse/resistor combination to test the posiblitiy of fuse-trimming


pinout
******

.. image:: _static/pinout.svg
    :align: center

signals
*******

.. list-table::
   :header-rows: 1
   :stub-columns: 1

   * - pin name
     - whats it

   * - fuse
     - fuse experiment
   * - det         
     - dipol detector
   * - det10       
     - 10x serial dipol detectors
   * - shottky     
     - test-diode

   * - OTA+        
     - noninverting OTA input
   * - OTA-        
     - inverting OTA input
   * - OTAo        
     - OTA ouput

   * - shuntGND    
     - shunt-regulators VSS connection. can be used to measure the current
   * - IOVDD       
     - 3.3V input and shunt-cathode if shuntGND is connected to IOVSS
   * - IOVSS       
     - 0V - connect to VSS
   * - VSS         
     - 0V - connect to IOVSS
   * - VDD         
     - 1.8V regulator output

   * - bias in     
     - resistor from IOVDD sets the bias-currents of all OTAs
   * - ref out     
     - bandgap voltage - high impedace output and regulator ref input. lowpass possible.
   * - ref cur     
     - reference current source from IOVDD
   * - ref adj     
     - resistor to IOVDD or IOVSS to trim the zero of the temperature coefficent


