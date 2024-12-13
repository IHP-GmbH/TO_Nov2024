
************************
CMOS only BiCMOS chip ;)
************************


.. toctree::
    :hidden:
    
    specification
    ota
    reference
    regulators
    io
    detectors
    tests
    designdata
    validation

.. warning::
    this chip is mostly done using an unfinished PDK. LVS was done only for parts.

.. image:: _static/CMOS_chip.png
    :align: center

\

background
**********

to make first steps using iHPs openPDK, Xschem and KLayout designing a OTA was obvious. this part is DRC and LVS clean, verified also using commercial tools. 

but thats also the only clean part on this chip from my perspective. its highly likely that the IO cells are perfect, but i coudent verify this my self. the opensouce LVS didnt was ready, and i hadnt the time to verify any other part then the OTA via LVS. 

the sg13g2 process
******************

there are two kinds of GateOxydes: thick for high-voltage like 3.3V circuits and standard for 1.2..1.8V circuits. there are three differnt SiGe BjTs, but all are NPNs. while the Si-parasitic transistors are only PNP.



