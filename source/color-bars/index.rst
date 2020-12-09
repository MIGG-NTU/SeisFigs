Color Bars
==========


Seismicity
----------

``TODO``


Seismic Velocity
----------------

CUB use a very beautiful `seismic velocity color bar <https://raw.githubusercontent.com/MIGG-NTU/SeisFigs_Examples/main/source/color-bars/seismic-velocity.cpt>`__.

.. gmtplot::
    :language: bash
    :width: 80%
    :caption: Seismic velocity color bar

    gmt begin seismic-velocity png,pdf
        gmt colorbar -Cseismic-velocity.cpt -Dx0c/0c+w10c/0.2c+h+e+n -Bxa1
    gmt end show

Or you can use the :doc:`built-in cpt <gmt_china:cpt/builtin-cpt>` color bar in GMT. If you'd like to output the generated color bar to a file, remember to use the argument ``-H`` of :doc:`gmt:makecpt` (Modern mode only). Meanwhile, the file name cannot be same as the used built-in cpt name (e.g., seis.cpt in this example).

.. gmtplot::
   :language: bash
   :width: 80%
   :caption: GMT seis color bar

    gmt begin gmt_seis png,pdf
        gmt makecpt -Cseis -T-6/6/0.5 -Z -D
        gmt colorbar -Dx0c/0c+w10c/0.2c+h+e+n -Bxa1
    gmt end show

There are some more alternative CPTs that may work well for seismic tomography: 
`BlueWhiteOrangeRed <https://raw.githubusercontent.com/MIGG-NTU/SeisFigs_Examples/main/source/color-bars/BlueWhiteOrangeRed.cpt>`__.
`Roma <https://raw.githubusercontent.com/MIGG-NTU/SeisFigs_Examples/main/source/color-bars/roma.cpt>`__.

.. gmtplot::
   :language: bash
   :width: 80%
   :caption: More Seis color bars

    gmt begin more_seis_cpts png,pdf
        gmt makecpt -CBlueWhiteOrangeRed.cpt -T-6/6 -I -D
        gmt colorbar -Dx0c/0c+w10c/0.2c+h+e+n -Bxa1
        gmt makecpt -Croma.cpt -T-6/6/0.5 -Z -D
        gmt colorbar -Dx0c/-2c+w10c/0.2c+h+e+n -Bxa1
    gmt end show


Topography
----------

``TODO``

