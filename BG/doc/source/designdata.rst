##########################################
design data and design process description
##########################################

iHP 130nm BiCMOS process sg13g2
###############################

the process is useable via iHPs openPDK:

source
https://github.com/IHP-GmbH/IHP-Open-PDK

documentation
https://ihp-open-pdk-docs.readthedocs.io/en/latest/index.html

open-source runs:
https://www.ihp-microelectronics.com/services/research-and-prototyping-service/fast-design-enablement/open-source-pdk

Xschem schematics:
#######

.. list-table:: 
   :header-rows: 1
   :stub-columns: 1

   * - folder
     - for
   * - design_data/xschem/cdl
     - symbols for Xschem schematics
   * - design_data/xschem/OTA
     - design and simulation of the OTA
   * - design_data/xschem/simulations
     - simulations of the voltage regulators
   * - design_data/xschem/symbol
     - symbols for Xschem schematics

KLayout .GDS:
#######

.. list-table:: 
   :header-rows: 1
   :stub-columns: 1

   * - file
     - for
   * - design_data/gds/FMD_QNC_mmW_detector.gds.gz
     - layout of the chip
