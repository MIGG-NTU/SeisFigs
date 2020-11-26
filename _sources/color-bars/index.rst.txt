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
        gmt colorbar -Dx0c/0c+w10c/0.2c+h+e+n -Bxa1 -Cseismic-velocity.cpt
    gmt end show

Or you can use the default `seis <https://docs.gmt-china.org/latest/cpt/builtin-cpt/#>`__ color bar in GMT.

.. gmtplot::
   :language: bash
   :width: 80%
   :caption: Seismic velocity color bar (GMT_seis)

    gmt begin seismic-velocity-gmtseis png,pdf
        makecpt -Cseis -T-6/6/0.5 -Z -D > gmt-seis.cpt
        gmt colorbar -Dx0c/0c+w10c/0.2c+h+e+n -Bxa1 -Cgmt-seis.cpt
    gmt end show


Topography
----------

``TODO``


