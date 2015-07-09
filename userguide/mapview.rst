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


The Map View Menu
-----------------------

The map menu gives the possibility to access some additional map tools:

* access the gps data list
* access the spatialite data list. This is explained in the :ref:`spatialite section <spatialite>`
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

Gps data list
~~~~~~~~~~~~~~~~

The gps data list shows the data surveyed, both points and tracks.

The notes are all kept inside a single layer and therefore have an own
panel in the upper part. From there you can change visibility, size and color.

Below the notes panel, there is the list of recorded tracks. 

.. figure:: wiki/images/24_gpsdata_list.png
   :align: center
   :width: 300px

Image notes can be toggled between visible and non visible.

Notes can be visualized as icons or as shapes. The size, color and opacity can be customized by
the user. This can be usefull in those cases in which many notes have to coexist in a small space
for better readability.

.. figure:: wiki/images/25a_notes_properties.png
   :align: center
   :width: 300px

It is also possible to show the label for the note and customize its size and halo.

.. figure:: wiki/images/25b_notes_properties.png
   :align: center
   :width: 300px


In the case of complex notes notes the labelling is a bit tricky, because any of the 
textfields inside the forms could be a label.

For that reason it is necessary to add a particular tag to the field that is meant 
to be the label: *islabel*.

Once that tag is added, the marked textfield will be used as a label. Look at the
form based notes section to understand complex forms.

An here is how it all loks like with customized notes and labels:

* simple notes show the complete text
* complex form notes show the label of the marked textfield
* the icons are now small blue circles

.. figure:: wiki/images/25c_notes_properties.png
   :align: center
   :width: 300px

It is possible to change the visibility of the single track from here, but also enter (by tapping on it) a properties panel.

.. figure:: wiki/images/25_gpsdata_properties.png
   :align: center
   :width: 300px

From here it is possible to:

* change the name of the track
* change track width
* change track color
* chart the track 
* zoom to the first point of the log in the map view
* remove the track

Go to
~~~~~~~

The go to function has two possibilities:

 * go to coordinate
 * use geocoding and/or routing

.. figure:: wiki/images/29_goto.png
   :align: center
   :width: 300px


In the **go to coordinate** panel it is possible to insert lat/long 
coordinates and navigate to the inserted point on the map view:

.. figure:: wiki/images/29_goto_coordinate.png
   :align: center
   :width: 300px

Through geocoding it is possible to insert some address and find 
its location (uses google maps geocoding).

.. figure:: wiki/images/29_goto_geocache.png
   :align: center
   :width: 300px

From the same panel it is possible to create a route from the 
current position to the inserted location. This uses the 
amazing http://openrouteservice.org 

The user can choose the type of route. After that a route 
is created and placed in the gps logs tracks.

.. figure:: wiki/images/29_goto_routing.png
   :align: center
   :width: 300px


