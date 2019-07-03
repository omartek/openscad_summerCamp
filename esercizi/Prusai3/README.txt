                   .:                     :,                                          
,:::::::: ::`      :::                   :::                                          
,:::::::: ::`      :::                   :::                                          
.,,:::,,, ::`.:,   ... .. .:,     .:. ..`... ..`   ..   .:,    .. ::  .::,     .:,`   
   ,::    :::::::  ::, :::::::  `:::::::.,:: :::  ::: .::::::  ::::: ::::::  .::::::  
   ,::    :::::::: ::, :::::::: ::::::::.,:: :::  ::: :::,:::, ::::: ::::::, :::::::: 
   ,::    :::  ::: ::, :::  :::`::.  :::.,::  ::,`::`:::   ::: :::  `::,`   :::   ::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  :::::: ::::::::: ::`   :::::: ::::::::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  .::::: ::::::::: ::`    ::::::::::::::: 
   ,::    ::.  ::: ::, ::`  ::: ::: `:::.,::   ::::  :::`  ,,, ::`  .::  :::.::.  ,,, 
   ,::    ::.  ::: ::, ::`  ::: ::::::::.,::   ::::   :::::::` ::`   ::::::: :::::::. 
   ,::    ::.  ::: ::, ::`  :::  :::::::`,::    ::.    :::::`  ::`   ::::::   :::::.  
                                ::,  ,::                               ``             
                                ::::::::                                              
                                 ::::::                                               
                                  `,,`


https://www.thingiverse.com/thing:2891054
Prusa i3 MK3 OpenSCAD preview model by PredatorJr is licensed under the Creative Commons - Attribution - Non-Commercial license.
http://creativecommons.org/licenses/by-nc/3.0/

# Summary

want to let you participate on this simple OpenSCAD model of the printer.

It's just a setup of all published scad-files by prusa and the 3 frame parts and assembled heated bed from this solidworks project 
https://www.thingiverse.com/thing:2699771
some mechanical parts, nema motors and the PSU cover from the MK2-files (at the moment I see there is a new MK3-cover made of two parts)

you can set the extruder and bed position by enter the values at the end of the file:
// final model with variable extruder and bed position
prusa_mk2_printer(200,105,200);

in case of modificated parts by prusa just replace the files. I made this  by adding a few files (named with 001_ ... and following) for special customizations. 

Some content within the codes is remaining from the MK2S setup, don't wonder about it.
And there is a LED bracket bonus part.

open 001_printer_custom.scad

Original Prusa printable parts (required):
https://www.prusa3d.com/download-printable-parts-stl-mk3

extract the SCAD-files to the same folder.

and put libraries also into this folder or to your library-folder in user documents.