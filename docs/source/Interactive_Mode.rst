================
Interactive Mode 
================

You can run OpenLane in an interactive mode for greater control for each step of the design flow as follows:


.. code-block:: shell

    ./flow.tcl -interactive


This opens an interactive TCl interpreter window.

.. code-block:: shell 

    % package required openlane

You will be able to run the following commands:

.. code-block:: shell

     prep -design <design_name> -tag <tag>
     run_synthesis
     run_floorplan
     run_placement
     run_cts
     run_resizer_timing
     run_routing
     run_parasitics_sta
     run_antenna_check
     run_magic
     run_klayout
     run_klayout_gds_xor
     run_magic_spice_export
     run_lvs
     run_magic_drc
     run_klayout_drc
     run_antenna_check
     run_lef_cvc

The above commands can also be written in a file and passed to ``flow.tcl``:

.. code-block:: shell

    ./flow.tcl -interactive -file <file_name>


.. Note::
      
    1. You can directly pass the command line argument to  ``./flow.tcl -interactive`` to run the above commands without using prep.
    2. Run the above commands in the same flow sequence and no step should be skipped.






