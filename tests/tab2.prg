/*

  HWGUIQt Project - Test Program

  Copyright (C) 2018 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/HWGUIQt

*/

#include "hwguiqt.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oDialog
   LOCAL oTab

   oApp := QApplication():new()

   INIT DIALOG oDialog TITLE "Teste da classe HWGTab" SIZE 640,480

   @ 10,10 TAB oTAB ITEMS {} SIZE 640-20,480-20 OF oDialog

   BEGIN PAGE "P�gina 1" OF oTab
   END PAGE OF oTab

   BEGIN PAGE "P�gina 2" OF oTab
   END PAGE OF oTab

   BEGIN PAGE "P�gina 3" OF oTab
   END PAGE OF oTab

   ACTIVATE DIALOG oDialog

   oDialog:delete()

   oApp:delete()

RETURN
