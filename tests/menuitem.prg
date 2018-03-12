/*

  HWGUIQt Project - Test Program

  Copyright (C) 2018 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/HWGUIQt

*/

#include "hwgui.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oMainWindow
   LOCAL oMenuBar
   LOCAL oMenuA
   LOCAL oMenuB
   LOCAL oMenuC

   oApp := QApplication():new()

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   BEGIN MENUBAR oMenuBar OF oMainWindow
      BEGIN MENU oMenuA TITLE "Menu &A" OF oMenuBar
         MENUITEM "Op��o A1" ACTION hwg_MsgInfo("A1") OF oMenuA
         MENUITEM "Op��o A2" ACTION hwg_MsgInfo("A2") OF oMenuA
         MENUITEM "Op��o A3" ACTION hwg_MsgInfo("A3") OF oMenuA
      END MENU
      BEGIN MENU oMenuB TITLE "Menu &B" OF oMenuBar
         MENUITEM "Op��o B1" ACTION hwg_MsgInfo("B1") OF oMenuB
         MENUITEM "Op��o B2" ACTION hwg_MsgInfo("B2") OF oMenuB
         MENUITEM "Op��o B3" ACTION hwg_MsgInfo("B3") OF oMenuB
      END MENU
      BEGIN MENU oMenuC TITLE "Menu &C" OF oMenuBar
         MENUITEM "Op��o C1" ACTION hwg_MsgInfo("C1") OF oMenuC
         MENUITEM "Op��o C2" ACTION hwg_MsgInfo("C2") OF oMenuC
         MENUITEM "Op��o C3" ACTION hwg_MsgInfo("C3") OF oMenuC
      END MENU
   END MENUBAR

   ACTIVATE WINDOW oMainWindow

   oApp:exec()

   oMainWindow:delete()

   oApp:delete()

RETURN
