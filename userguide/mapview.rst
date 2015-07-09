.. index:: mapview
.. _mapview:

The Map View
==============

The map view is the central view of the application. It can be used
to view the current gps position, several maps and datasets and
can be used to navigate.

.. figure:: 03_mapview/01_mapview.png
   :align: center
   :width: 300px

   The map view.

The map engine comes from the `mapsforge <http://code.google.com/p/mapsforge/>`_ project.

The :ref:`supported datasets <maps>` section lists and describes all supported 
map types. Just to cite a few, one can view:

* `OpenStreetMap <http://www.openstreetmap.org/>`_ maps both when online (downloading new tiles) 
  and offline (visualizing those that were cached during online mode)
* `mbtiles databases <http://www.mapbox.com/developers/mbtiles/>`_
* local and remote `TMS <http://wiki.osgeo.org/wiki/Tile_Map_Service_Specification>`_ tiles
* mapsforge vector files

.. index:: mapview tools
.. _mapviewtools:

Map view tools
--------------------

The map view has a set of tools that can be exploited to interact with the map. 

When first launched, the tools are already visible on the map. To have a 
cleaner mapview, the user can long-tap on the upper right menu button 
to toggle the visibility of the tools.

.. figure:: 03_mapview/02_mapview_tools_off.png
   :align: center
   :width: 300px
   
   The map view with disabled tools.
   

Available tools are:

* Left screen side

  - add note (the same that is accessed from the dashboard)
  - list all notes
  - add bookmark
  - list all bookmarks
  - activate the measure tool

* Right screen side

  - the context menu button
  - the zoom in and out buttons

* Lower center

  - battery status
  - center screen on GPS position and GPS status button
  - editing tools

.. figure:: 03_mapview/01_mapview.png
   :align: center
   :width: 300px

   The map view with all map tools visible.

Add Notes
+++++++++++++++++++

.. figure:: 02_dashboard/03_notes.png
   :align: center
   :width: 300px

   The view from which notes are taken.

The add notes button opens the same notes view as the button on the dashboard.
There is only once difference. Since notes can be added both in the gps position
and in the middle of the map, to open the add note view from the dashboard, the GPS 
is required to have a fix.

Instead from the map view the user can open the add note view even without 
GPS signal, in which case he will be allowed to insert notes only in the 
map center position.

For further information about taking notes, visit the :ref:`notes section<notes>`.

.. index:: notes list
.. _noteslist:

The Notes List
+++++++++++++++++++

The notes list shows all the available notes, both text and image notes.

.. figure:: 03_mapview/03_noteslist1.png
   :align: center
   :width: 300px

   The notes list view.


In the upper part there is a textbox that helps to filter out a particular note based on its name.

.. figure:: 03_mapview/04_noteslist_filter.png
   :align: center
   :width: 300px

   Notes can be filtered by text.

At the right side of the list 2 icon are available. 
The left one positions the map on the selected note's position.
The rigth one opens a menu:

.. figure:: 03_mapview/05_note_menu.png
   :align: center
   :width: 300px

   The note menu.

From the note menu the user is able to:

* share the note through social networks
* delete the note
* use the current note as a filter

.. figure:: 03_mapview/06_note_as_selection.png
   :align: center
   :width: 300px

   Example of using a note as filter for the list.

* access the submenu related to all notes

.. figure:: 03_mapview/07_notes_all_menu.png
   :align: center
   :width: 300px

   The submenu that considers all notes.

From the all-notes submenu the user can:
 
  - select all notes
  - invert the current selection
  - delete the selected notes

.. index:: add bookmarks
.. _addbookmarks:

Add Bookmark
+++++++++++++++++++

Bookmarks are in a layer on their own, that contains saved settings of the current map view.
When a bookmark is added, the user is prompted to insert a name for the bookmark
or leave the generated name based on the current time and date.

.. figure:: 03_mapview/08_add_bookmark.png
   :align: center
   :width: 300px

   The add bookmark dialog.

When a bookmark is added , a small star is added on the map in the center of the screen.

.. figure:: 03_mapview/09_bookmark.png
   :align: center
   :width: 300px

   The bookmark star in the map.

Also the map bounds and zoom are saved. That way one can return to the scenario 
that the bookmark represents in any moment.

It is possible to tap on the bookmark to read its label.

.. figure:: 03_mapview/10_bookmark_open.png
   :align: center
   :width: 300px

   A tapped bookmark.


.. index:: bookmarks list
.. _bookmarkslist:

The Bookmarks List
+++++++++++++++++++++++

The bookmarks list shows all the saved bookmarks.

In the upper part there is a textbox that helps to filter out a particular bookmark based on its name.

The user has 4 options, as the icons on each bookmark entry shows:

* go to the bookmark location
* add a proximity alert. In that case a dialog opens and asks for a radius in meters 
  to define the proximity area. Once the gps enters that area, the user will be notified
* rename the bookmark
* delete the bookmark

.. figure:: 03_mapview/11_bookmarks_list.png
   :align: center
   :width: 300px

   The list of bookmarks.

.. index:: measure tool
.. _measuretool:

Measure tool
+++++++++++++++++

Activating the measure tool puts the app in measure mode. This mode disables 
the ability to pan the map while enabling
the possibility to draw a line on the map and measure the line drawn. 

The *approximate* (the distance is calculated without considering
elevation deltas and with the coordinate picking precision of a finger 
on a screen) distance is shown in the upper part of the map view.

When active, the measure tool has a red colored icon, when inactive the icon is green instead.

.. figure:: 03_mapview/12_measure_tool.png
   :align: center
   :width: 300px

   An example of qualitative measurement on the map.

..  Openstreetmaps tools
	~~~~~~~~~~~~~~~~~~~~~~~~~

	Geopaparazzi is able to create and upload to an OSM account collected points of interest. 

	The first step to follow is to activate the OSM support in the preferences.

	Once done, next time geopaparazzi is restarted, the user will be asked if he wants 
	to download the OSM tags definitions. These is actually the library of simbols and 
	tags descriptions for the different OSM point types.

	.. figure:: wiki/images/39_osm_tagsdownload.png
	   :align: center
	   :width: 300px

	From that point on in the map view you will see a small OSM icon that can 
	be dragged to the left and shows all available OSM categories:

	.. figure:: wiki/images/40_osm_categories.png
	   :align: center
	   :width: 300px

	Once a category is selected, the tags of the category are shown:

	.. figure:: wiki/images/41_osm_accomodation.png
	   :align: center
	   :width: 300px

	The selection of a specific tag then finally opens the form with the properties
	to be defined by the user:

	.. figure:: wiki/images/42_osm_motel.png
	   :align: center
	   :width: 300px

	Once populated the form, it is possible to syncronize the collected POIs with
	an online OSM account. The user will be prompted to insert a description
	for the changeset he is uploading:

	.. figure:: wiki/images/43_osm_sync.png
	   :align: center
	   :width: 300px

	If user and password were properly supplied, geopaparazzi will connect to a
	WPS server that will take care of interacting with the OSM servers and do 
	everything necessary to upload the data. Kudos go to `Luca Delucchi <http://gis.cri.fmach.it/delucchi/>`_, 
	which has been of stretegic help in understanding what was necessary to make this 
	work. He also is the author and host of the WPS service and the iconset and tags definitions.

.. index:: map view menu
.. _mapviewmenu:

The Map View Menu
-----------------------

The map menu gives the possibility to access some additional map tools:

* access the gps data list
* access the spatialite data list. 
* toggle the scalebar
* open the compass
* toggle automatic centering on the gps position
* center the view on the current base map (if possible)
* go to a location
* share the current position
* view the data visible in the viewport in `Mixare <http://www.mixare.org/>`_
* import data from the underlying mapsforge map 

.. figure:: 03_mapview/13_map_menu.png
   :align: center
   :width: 300px

   The upper part of the map menu.

.. index:: gps data list
.. _gpsdatalist:

Gps data list
++++++++++++++++++

The gps data list shows the data surveyed, both points and tracks.

.. figure:: 03_mapview/14_gpsdatalist.png
   :align: center
   :width: 300px

   The gps data view. In the upper part the notes button, in the
   lower part the gps logs list.

The **notes** are all kept inside a single layer and therefore have a dedicated
panel in the upper part. 

From there the user can change the visibility.

Notes can be visualized as icons or as circular shapes. The size, color and opacity can be customized by
the user. This can be usefull in those cases in which many notes have to coexist in a small space
for better readability.

It is also possible to show the label for the note and customize its size and halo.

.. figure:: 03_mapview/15_notes_properties.png
   :align: center
   :width: 300px

   The notes properties panel.

Below the notes panel, a checkbox can be used to toggled visibility of
image notes.


The **list of gps logs** gives the possibility to customize the 
logs. It is possible to change the visibility of the single track 
using the checkbox, but also to tap on it and enter its properties panel.

.. figure:: 03_mapview/16_log_properties.png
   :align: center
   :width: 300px

   The gps log properties panel.

From the properties panel it is possible to:

* change the name of the track
* check the start and end date and time
* update and read the track length
* change the track stroke width
* change the track stroke color
* zoom to the first point of the track in the map view
* chart the track. The chart has two axes, speed [m/s] on the left
  and elevation [m.s.l.] on the right.

.. figure:: 03_mapview/17_chart_log.png
   :align: center
   :height: 300px

* remove the track

.. index:: spatialite data list
.. _spatialitedatalist:

Spatialite data list
++++++++++++++++++++++

To be done...

.. figure:: 03_mapview/18_spatialite_data_list.png
   :align: center
   :width: 300px
   
   The list of spatialite based data.

.. index:: goto
.. _goto:

Go to
++++++++++++

The go to function has two possibilities:

 * go to coordinate
 * use geocoding and/or routing

.. figure:: 03_mapview/19_goto1.png
   :align: center
   :width: 300px

In the **go to coordinate** panel it is possible to insert lat/long 
coordinates and navigate to the inserted point on the map view:

.. figure:: 03_mapview/20_goto_coord.png
   :align: center
   :width: 300px

Through geocoding it is possible to insert some address and find 
its location (uses google maps geocoding).

.. figure:: 03_mapview/21_goto_point.png
   :align: center
   :width: 300px

From the same panel it is possible to create a route from the 
current position to the inserted location. 

The services that can be used are `OSRM <http://project-osrm.org/>`_,
`MapQuest <http://developer.mapquest.com/>`_ and 
`Graphhopper <https://graphhopper.com/>`_.

.. figure:: 03_mapview/23_goto_route_api.png
   :align: center
   :width: 300px

   The routing service selection dialog with all supported services.

For both MapQuest and Graphhopper the user will need to register to their website 
and ask for an API-KEY. That key can be inserted in the Geopaparazzi settings. 
If no key is available, those two routing services will not appear in the available 
services choice list.

.. figure:: 03_mapview/22_goto_route_noapi.png
   :align: center
   :width: 300px

   If no API-KEY is supplied, only OSRM is proposed.


Once the OK button is tapped, the route is calculated by the service
starting from the current map center to the destination point.
The route is then downloaded and placed in the gps logs tracks.

.. figure:: 03_mapview/24_route_rome.png
   :align: center
   :width: 300px

   The fresh downloaded route from Bolzano to Rome.


.. index:: share position

Share position
++++++++++++++++++++

The *share position* entry opens the usual sharing dialog of Android:

.. figure:: 03_mapview/25_share1.png
   :align: center
   :width: 300px

If for example `telegram <https://telegram.org/>`_ is chosen, the sent link will 
look like:

.. figure:: 03_mapview/26_telegram.png
   :align: center
   :height: 300px

.. index:: import mapsforge data
.. _importmapsforgedata:

Import mapsforge data
++++++++++++++++++++++++

The mapsforge tiles are generated on the device from a particular vector format.
This means that there are information available in the database. Problem is that, 
very very simply put, the information contained is extracted differently at 
different zoom levels, because in fact the library and the format have been done 
that way to allow best rendering performance.

But still it is possible to extract almost everything we see, which is nice.

Let's see how this works. **For this to work it is mandatory that the loaded 
background map is of type "map"**.
Assume you have a job to do, are out in the field and want 
view information overlayed on the ortofoto pictures from the local WMS service.

Well, the map file you get from mapsforge looks like the following:

.. figure:: 03_mapview/27_mapsforge1.png
   :align: center
   :width: 300px


Once the *import mapsforge data* has been chosen, its panel appears:

.. figure:: 03_mapview/27_mapsforge2.png
   :align: center
   :width: 300px

From the view you can see that 2 types of data can be imported: points and ways.

**Points**

Since the points are often visible on a different zoomlevel then the current,
also 3 zoomlevels below the current are investigated to extract data and 
double points are not considered. So if you start this at zoomlevel 16, 
you will also get 17, 18, 19. Since the same are at a different zoomlevel
will have many more tiles, about 10000 tiles are read to import the data.

You can add a filter text to import only tags containing a given text
or exclude all those containing the text.

Points are imported in the current projectdatabase and saved as forms
notes containing all the values Openstreetmap has. As such they can 
also be edited.

All imported notes have a (MF) in their name. That is done so one can quickly 
select and remove them. Believe us, that is a feature you want to have since
such imports can generate very crowded notes lists.

.. figure:: 03_mapview/27_mapsforge10.png
   :align: center
   :width: 300px

   The notes list after a mapsforge import.

**Ways**

Many types of ways are stored in the mapsforge map files and many of them 
are actually related to areas. 

The user can choose to import:

* ways: roads, railways, cableways and similar
* waterways: lines that represent water
* contours: contour lines if they are available

Since these data are heavy, the data are imported into a dedicated 
spatialite database. A database for mapsforge extracted data is automatically 
created if there is none present. You will find a database named 
**mapsforge_extracted.sqlite** always present in your maps folder. 
And you will find 3 layers always present in the spatialite data layers: 
**osm_waterlines, osm_roads and osm_contours**.


.. figure:: 03_mapview/27_mapsforge3.png
   :align: center
   :width: 300px

   The mapsforge database and layer that host imported data.

Just select the data you want to import and push the start button. 
In the case you selected all data types, you should see first an 
import dialog like this:

.. figure:: 03_mapview/27_mapsforge4.png
   :align: center
   :width: 300px

and then something like this:

.. figure:: 03_mapview/27_mapsforge5.png
   :align: center
   :width: 300px

Depending on what has been imported first, the labels might not be coming from 
the right osm field. In that case it can be simply changed in the spatialite 
layer settings. Refer to the :ref:`spatialite data list section <spatialitedatalist>`.

What happens in the case we use a map that also shows contour lines? To do so, we want 
to clear those layers. The fastest way to do so is to simply delete the mapsforge database 
and let Geopaparazzi recreate it on restart.

After doing so and loading a map with contours the same region will import:

.. figure:: 03_mapview/27_mapsforge7.png
   :align: center
   :width: 300px

To have a better idea, change the background map to something different. Here I also changed
the contours color to white:

.. figure:: 03_mapview/27_mapsforge8.png
   :align: center
   :width: 300px

Label support is not very advanced, so they get readable only once you zoom in:

.. figure:: 03_mapview/27_mapsforge9.png
   :align: center
   :width: 300px







