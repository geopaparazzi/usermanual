The dashboard
==============

Once you launch Geopaparazzi, the dashboard appears.

All the features that need to be quickly accessed, such as toggling GPS on and off, 
creating a note or taking a picture, as well as visualizing the current position 
on a map, are accessible from the dashboard.

.. figure:: 00_dashboard.png
   :align: center
   :width: 300px

From the dashboard these primary functions can be accessed:

* the action bar functions
* take notes
* view or modify the project metadata
* take a GPS Track
* switch to Map View
* import Data
* export Data

Action Bar
-------------------------

The action bar, from right to left, presents the following functions:

* the main menu
* the info button
* the gps status access button

.. image:: 01_actionbar.png
   :align: center
   :width: 300px

.. image:: 02_gps_states.png
   :align: center
   :width: 300px

Notes
-------------------------

Geopaparazzi supports 4 different types of notes:

* text notes
* picture notes
* sketch notes
* form-based notes

To access them you can tap on the first icon of the dashboard,
the *take notes* icon. Once you tap on it, the *take notes* dialog 
appears:

.. figure:: 03_notes.png
   :align: center
   :width: 300px

The uppermost button gives the possibility to choose if the note
will be inserted in the **current gps position** (in case gps is on)
or in the the **center of the map** (aka, the crossfade).

Below the button, three quick note buttons are presented:

* The Quick text note button, which opens a simple dialog, 
  inside which the text note can be written. Want to save the note? 
  Tap on the *ok* button. Want to trash it? Tap on the *cancel* button.

  Remember that the position of the note is taken when the note view is 
  opened, not closed, so you have all the time you need to insert the text. 

.. figure:: 04_textnotes.png
   :align: center
   :width: 300px

* The Quick picture note button, which will launch the camera application 
  that comes with your android system. We decided to switch from our custom 
  camera application to the default one, because it gives many more 
  possibilities of customization of the images size, focus and so on. 
  This has one drawback, which is the fact that we are not able to pick 
  the azimuth of the camera shot at the exact moment it is taken. 
  The azimuth is therefore recorded at the moment the camera application is closed.
  That means that to have a realistic azimuth, you need to take the picture 
  and stay with the device in the same position of the snapshot until 
  you have closed the camera app.

* The Quick sketch note button, which allows you to draw on a small panel and 
  save your sketch. One can change stroke style, color, and width. 
  Other buttons such as undo, clear, save, and share are also available.
  
  Once the note has been saved, it can't be changed.

.. figure:: 05_sketchnotes.png
   :align: center
   :width: 300px

Form based notes
+++++++++++++++++++++

Form based notes are complex notes that allow for better surveys.
Some examples are available in the base installation of geopaparazzi.

The **example** button in particular shows all the possible form widgets available:

.. figure:: 06_form_based_notes.png
   :align: center
   :height: 300px

The notes can be saved and modified in a second moment.

To understand how to create forms, have a look at the section 
dedicated to forms.

Project Information
-------------------------

The project view shows information about the project database.

It shows:

* the database file name
* the project name
* the project description
* project notes
* creation and last closing date
* the user that created the project
* the user that last modified the project

Apart of the dates, that are set by the system, all data can be changed and 
saved through the save button.

.. figure:: 07_project_info.png
   :align: center
   :width: 300px

Gps Logging
-------------------------

To start logging, the user simply has to push the **logging** button.

Once it is tapped, the user is prompted to insert a name for the 
log or to accept the one generated based on the current date and time
( log_YYYYMMDD_HHMMSS ).

It is also possible to attach the new log to the last created log by 
checking the box: *Continue last log*. In that case the proposed name 
of the log (or any user inserted) is ignored, since no new log it created. 

.. figure:: 08_start_logging.png
   :align: center
   :width: 300px

Once the logging has started, the logging icon will change and present a
red sign. Also, the gps status icon has turned blue.
 
.. figure:: 09_logging_on.png
   :align: center
   :width: 300px

To stop logging, the same button is used. Once tapped, the user is prompted 
to verify the action. 

Map View
-------------------------

Import
-------------------------

Export
-------------------------


