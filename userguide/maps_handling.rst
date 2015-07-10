.. index:: data preparation
.. _datapreparation:

Handling datasets from and for Geopaparazzi
===================================================

Several applications can be used to prepare and evaluate 
datasets for Geopaparazzi. The current ones known are:

* STAGE
* Spatialite GUI
* QGIS
* GDAL
* GRASS

STAGE 0.7
--------------

STAGE (Spatial Toolbox And Geoscripting Environment) is a standalone application 
dedicated to spatial analyses.

Related to Geopaparazzi, it contains functionalities to:

* Create **mbtiles** files from raster and vector sources.  
* Export geopaparazzi projects (version 3 or 4) to **shapefiles**, notes, profiles, and other details. 
* Convert geopaparazzi projects from version 3 to version 4.

Installation
++++++++++++++++++

STAGE can be `downloaded from the github releases page <http://git.io/stage_releases>`_

Steps:

* copy the zip file in a folder:
 - stage_0.7_win64.zip for 64 bits windows operating systems
 - stage_0.7_win32.zip for 32 bits windows operating systems
 - stage_0.7_lin64.zip for 64 bits linux operating systems
* unzip the file in a folder
* enter the unzipped folder
* run the Stage application (ex. stage.exe for windows)

.. figure:: 07_maps_handling/01_stage.png
   :align: center
   :width: 600px

The *mobile* section contains modules related to Geopaparazzi.

.. figure:: 07_maps_handling/02_stage.png
   :align: center
   :width: 600px

.. _stagembtiles:

MBTiles creation
++++++++++++++++++++++

For the creation of an MBTiles file from a set of GIS data, as shapefiles 
and tiff rasters, select the module: **GeopaparazziMapsCreator**

.. figure:: 07_maps_handling/03_stage.png
   :align: center
   :width: 600px

The user will be able to add:

* up to 2 raster tiff or asc maps
* up to 5 vector shapefiles
* define the name of the new mbtiles dataset
* define the minimum and maximum wanted zoomlevel (zoomlevels > 18 start to take long tim
  to build because of the large number of tiles generated)
* the image type to use:
  - jpg: this should be used when photographic data are used (ex. aerial images)
  - png: this should be used when images are used (ex. technical maps)
* the output folder, inside which the database will be created

Once the parameters are set, the module can be launched by pushing the 
green **play button** in the top right toolbar.

In case of big data the user should consider to set the memory put 
available to the run module. This is done in the lower left combobox 
labeled **Memory [MB]**. The number to set is considered to be MegaBytes.
A safe value to use is a bit less than the amount of RAM available 
on the computer.

For windows 32bit machines it is not possible to use more than 1000 MB due
to technical limitations of Java itself.


Converstion of Geopaparazzi data to GIS data
++++++++++++++++++++++++++++++++++++++++++++++++

Through the module **Geopaparazzi4Converter** it is possible to export 
data from a Geopaparazzi project database.

.. figure:: 07_maps_handling/04_stage.png
   :align: center
   :width: 600px

The only parameter to set are the input Geopaparazzi database path and the 
output folder. It is also possible to toggle the creation of some of the data 
contained in the database.

To run the module, refer to the :ref:`mbtiles section <stagembtiles>`.

How are the data are exported from the Geopaparazzi database?
The following is created:

- point shapefiles for each type of note also complex forms
- point shapefiles with reference to pictures taken and sketches
- all pictures are exported to a media folder
- line and points shapefiles for log lines and points
- profile charts and csv of log data
- a simple text project metadata file

The exported data, viewed inside a GIS (in this case `uDig <http://www.udig.eu>`_)
look like the following:

.. figure:: 07_maps_handling/12_udig.png
   :align: center
   :width: 600px

.. index:: spatialite gui
.. _spatialitegui:

Spatialite GUI
---------------------

**Download the Spatialite-gui**

You can find it on the spatialite homepage, at the time of writing a good version for windows is version 1.7.1 available in `this download area <http://www.gaia-gis.it/gaia-sins/windows-bin-amd64-prev/>`_.

Open it and find yourself with:

.. figure:: 07_maps_handling/01_spl.png
   :align: center
   :width: 600px

**Create a new empty database in which to load the shapefile data**


.. figure:: 07_maps_handling/02_spl.png
   :align: center
   :width: 600px

You will be asked to save the database somewhere on disk. Once done, 
you should find yourself with something like this, but with different path:

.. figure:: 07_maps_handling/03_spl.png
   :align: center
   :width: 600px

**Load the shapefile**

To do so locate the Load Shapefile icon:

.. figure:: 07_maps_handling/04_spl.png
   :align: center
   :width: 600px

In this example I will import a set of shapefiles from the `Natural 
Earth dataset <http://www.naturalearthdata.com/>`_, in particular the following ones:


.. figure:: 07_maps_handling/05_spl.png
   :align: center
   :width: 600px

that `can be found here <http://www.naturalearthdata.com/downloads/10m-cultural-vectors/>`_. 

The import dialog is the important one to fill the right way:

.. figure:: 07_maps_handling/06_spl.png
   :align: center
   :width: 600px

The really important things to take care of, are underlined in red:

* the SRID, i.e. the EPSG code of the data projection. If that one is not right, then you will not be able to see the data in geopaparazzi. Don't even hope in miracles!
* the Charset Encoding. Make sure to choose the right one. For example Japanese people might want to choose SHIFT_JIS if they want to see the labels rendered properly
* force the creation of the spatial index

If you then the push the ok button, you should find yourself with an ok message like this after the import:

.. figure:: 07_maps_handling/07_spl.png
   :align: center
   :width: 600px

You are almost there, one last step to go.

Right-click on the database name and select the **Update Layer Statistics** command. 

.. figure:: 07_maps_handling/08_spl.png
   :align: center
   :width: 600px

Depending on the amount of data it should keep your harddisk working for a bit. 
Don't think it finished unless you see a result like the following:

.. figure:: 07_maps_handling/09_spl.png
   :align: center
   :width: 600px

Once this result appears to you, you are good to go.

Move the spatialite database to your device, fire up geopaparazzi and 
go directly to the :ref:`spatialite data view <spatialitedatalist>`.

You should see something like:

.. figure:: 07_maps_handling/10_spl.png
   :align: center
   :width: 300px

Enable the countries and places layer, maybe also activate the labels
 for the places layer:

.. figure:: 07_maps_handling/11_spl.png
   :align: center
   :width: 300px


