# Examples of Plotting Seismic Figures

**Under Construction**

We will share plotting scripts and experience in this site, e.g., [GMT](https://www.generic-mapping-tools.org/), [Python](https://matplotlib.org/), [Illustrator](https://www.adobe.com/cn/products/illustrator.html) and [Blender](https://www.blender.org/).


## Gallery

- [GMT gallery](https://docs.generic-mapping-tools.org/latest/gallery.html)
- [GMT-China gallery](https://gmt-china.org/gallery)
- [GMT-China blog](https://gmt-china.org/blog)


## Color Bars

- [color-bars](color-bars): popular color bars used in seismic studies


## Examples

### 绘制测线(1D)

- [绘制指定测线的地震剖面图](https://gmt-china.org/example/ex014/)
- [绘制含地形起伏的地震剖面图](https://gmt-china.org/example/ex019/)
- [绘制俯冲带地震分布](https://gmt-china.org/example/ex026/)
- [绘制三维地形图](https://gmt-china.org/example/ex027/)

### 绘制剖面(2D) (`增加一个示例`)

- 基本原理: [从 3D 数据中截取剖面](https://blog.seisman.info/profile-from-3d-data/)
- [读 netCDF 文件](https://docs.gmt-china.org/5.4/grid/read/)
    - 查询头段信息
        - `ncdump -c 网格文件` 或 `ncdump -h 网格文件`
    - [convert](https://docs.generic-mapping-tools.org/5.4/gmtconvert.html): 表数据格式转换、列提取、列粘贴
        - 从一个[三维网格文件](https://ds.iris.edu/ds/products/emc-fwea18/)中提取一维变量数据: `gmt convert "FWEA18_kmps.nc?depth" &> depth`
    - [grdinfo](https://docs.gmt-china.org/latest/module/grdinfo/?highlight=grdinfo): 提取二维网格文件的基本信息
    - [grdconvert](https://docs.gmt-china.org/latest/module/grdconvert/): 网格文件转换为其它网格文件格式.
        - 从一个[三维网格文件](https://ds.iris.edu/ds/products/emc-fwea18/)中提取第一层数据(二维网格数据): `gmt grdconvert "FWEA18_kmps.nc?vph[0]" vph0.nc -V`
- 数据格式转换
    - [grd2xyz](https://docs.gmt-china.org/5.4/module/grd2xyz/): 将网格文件转换成表数据
    - [xyz2grd](https://docs.gmt-china.org/5.4/module/xyz2grd/?highlight=surface): 将表数据转换成网格文件，**不具备网格化/插值功能**
- 数据网格化
    - [surface](https://docs.generic-mapping-tools.org/5.4/surface.html): 网格化表数据
        - `gmt surface tabledata -Rlon1/lon2/lat2/lat2 -I1/1 -Ggridfile`
- 截取数据剖面
    - [project](https://docs.gmt-china.org/5.4/module/project/): 生成测线、将数据点投影到测线上
    - [grdtrack](https://docs.gmt-china.org/5.4/module/grdtrack/?highlight=grdtrack): 沿着指定的位置采样二维网格文件，指定的位置可以是由`project`生成的测线。
        - 注意提取前可以用`surface`对网格数据进行插值

- [slab1.0模型绘制指南](https://earthquake.usgs.gov/data/slab/SlabInstructions.php)
    - 介绍了基本的绘制2D数据的方法： psclip, grdimage, grdcontour, psxy, xyz2grd

