#!/bin/bash

gmt begin gmt_seis png,pdf
gmt makecpt -Cseis -T-6/6/0.5 -Z -D -H > gmt_seis.cpt
gmt colorbar -Cgmt_seis.cpt -Dx0c/0c+w10c/0.2c+h+e+n -Bxa1
gmt end
rm gmt_seis.cpt
