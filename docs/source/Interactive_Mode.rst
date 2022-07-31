================
Interactive Mode 
================

OpenLane run in a interactive mode by using ``-interactive`` where every steps of a design run by the user.

.. code-block:: shell

    ./flow.tcl -interactive

A tcl shell will be opened where the OpenLane package is automatically sourced:

.. code-block:: shell 

    % package required openlane

Then, able to run the following main commands:

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
    
    1. You can directly run the above command without prep using ``./flow.tcl -interactive -design <design_name> -tag <tag_name>``.
    2. Run the above commands in the same flow sequence and no step should be skipped.






