## Sample request process

The November run is out of the fab, so you can now ask for samples.

### What you must do

1. Sign the Hiring Agreement: [samples.rtf](drc/samples.rtf) (download it)
2. Send the signed file by email to:
   - **herman(at)ihp-microelectronics.com**
   - **nkehder(at)ihp-microelectronics.com**

### Required data in your email

Please include all contact details:

- **Name Last Name**
- **Address**
- **Phone number**
- **Email**

### Packaging options and bonding plan

- By default, we send **10 bare dies**.
- If you need a packaged chip, we can offer **QFN** or **open QFN** with pin counts from **24 to 64**.
- For bonding, we need a bonding plan.
- Example bonding plan for a 64-pin QFN: [QFN64.svg](drc/QFN64.svg) (download it)

Feel free to use this file and also copy and paste the image of your layout in the center, marking pin number 1.

| Design name | Short one line description | Location directory |
| --- | --- | --- |
| AC3E_USM_TDBUCK | Time-domain DCDC Buck converter with gate drivers, level shifters, and buffers for power management. | `AC3E_USM_TDBUCK/` |
| BG | CMOS-only test chip with OTA, bandgap reference, voltage regulators, mmW detectors, and IO cells. | `BG/` |
| CHIPCHILE_CANELOS24_WorkshopTO | Mixed-signal 4-input analog switch/multiplexer with SPI/I2C interface for the Canelos24 workshop. | `CHIPCHILE_CANELOS24_WorkshopTO/` |
| CryoChip | Cryogenic test chip for characterizing transistors and resistivity at low temperatures for quantum computing. | `CryoChip/` |
| Differntial_Amp | First self-taught student work to familiarize with analog IC design flow; OTA, Vdd 3.3 V, GBW 4 MHz. | `Differntial_Amp/` |
| ExampleDesign | Template/example design project for the IHP SG13G2 tapeout workflow. | `ExampleDesign/` |
| FlowSpace_SRAMBitCellTest | Single SRAM cell test structures to measure metrics on a single SRAM cell; part of the FlowSpace SRAM compiler development. | `FlowSpace_SRAMBitCellTest/` |
| MARTIn | Median Algorithm Reduced Test Interface; hardware median finder for coherent noise filtering in high-energy physics readout. | `MARTIn/` |
| MaskedAndUnmaskedAES | AES encryption implementations with both masked and unmasked variants for side-channel analysis. | `MaskedAndUnmaskedAES/` |
| arlet6502 | 6502-based design with reduced I/O using an SPI bus due to pad constraints. | `arlet6502/` |
| i2c-gpio-expander | 8-bit I2C GPIO expander for SG13G2 (MPW run T576). | `i2c-gpio-expander/` |
| sg13g2_io_testchip | IO pad and ring oscillator test chip (ROTest24_1) for the SG13G2 process. | `sg13g2_io_testchip/` |