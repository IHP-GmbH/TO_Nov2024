
########################
band gap reference
########################

the shunt-regulator has to limit the supply-voltage to 3.3V. it should be usable to 50mA.

schematic
#########

.. only:: html

    .. image:: _static/bg.svg
        :align: center

.. only:: latex
    
    .. image:: _static/bg.eps
        :align: center

layout
######

.. image:: _static/bg_layout.png
    :align: center

simulation
##########

:download:`PDF with Xyce simulation <_static/BG16_rppd_raw.pdf>`


LVS
########################

LVS wasn't working. and there are differences between layout and schematics
