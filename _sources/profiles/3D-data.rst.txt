3D Data
=======

``TODO``


Methods
-------

- `从 3D 数据中截取剖面 <https://blog.seisman.info/profile-from-3d-data/>`__


Commands
--------

Those are GMT5 commands, which need to be updated to GMT6.


Read netCDF
+++++++++++

`读 netCDF 文件 <https://docs.gmt-china.org/5.4/grid/read/>`__:

- 查询头段信息: ``ncdump -c 网格文件`` | ``ncdump -h 网格文件``
- `convert <https://docs.generic-mapping-tools.org/5.4/gmtconvert.html>`__: 表数据格式转换、列提取、列粘贴

    - `三维网格文件 <https://ds.iris.edu/ds/products/emc-fwea18/>`__ 中提取一维变量数据

        - ``gmt convert "FWEA18_kmps.nc?depth" &> depth``

- `grdinfo <https://docs.gmt-china.org/latest/module/grdinfo/?highlight=grdinfo>`__: 提取二维网格文件的基本信息
- `grdconvert <https://docs.gmt-china.org/latest/module/grdconvert/>`__: 网格文件转换为其它网格文件格式

    - `三维网格文件 <https://ds.iris.edu/ds/products/emc-fwea18/>`__ 中提取第一层数据(二维网格数据)

        - ``gmt grdconvert "FWEA18_kmps.nc?vph[0]" vph0.nc -V``

Data Format Tranformation
+++++++++++++++++++++++++

- `grd2xyz <https://docs.gmt-china.org/5.4/module/grd2xyz/>`__: 将网格文件转换成表数据
- `xyz2grd <https://docs.gmt-china.org/5.4/module/xyz2grd/?highlight=surface>`__: 将表数据转换成网格文件，**不具备网格化/插值功能**


Data Gridding
+++++++++++++

- `surface <https://docs.generic-mapping-tools.org/5.4/surface.html>`__: 网格化表数据

    - ``gmt surface tabledata -Rlon1/lon2/lat2/lat2 -I1/1 -Ggridfile``


Data Profile Cutting
++++++++++++++++++++

- `project <https://docs.gmt-china.org/5.4/module/project/>`__: 生成测线、将数据点投影到测线上
- `grdtrack <https://docs.gmt-china.org/5.4/module/grdtrack/?highlight=grdtrack>`__: 沿着指定的位置采样二维网格文件，指定的位置可以是由 ``project`` 生成的测线

    - 注意提取前可以用 ``surface`` 对网格数据进行插值


