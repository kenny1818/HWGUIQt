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
   LOCAL oMainWindow

   oApp := QApplication():new()

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN MDI

   BEGIN MENUBAR oMenuBar OF oMainWindow
      BEGIN MENU oMenuA TITLE "Op��es" OF oMenuBar
         MENUITEM "New" ACTION hwg_MsgInfo("new") BITMAP "images/new.png" OF oMenuA
         MENUITEM "Open" ACTION hwg_MsgInfo("open") BITMAP "images/open.png" OF oMenuA
         MENUITEM "Save" ACTION hwg_MsgInfo("save") BITMAP "images/save.png" OF oMenuA
         SEPARATOR OF oMenuA
         MENUITEM "Cut" ACTION hwg_MsgInfo("cut") BITMAP "images/cut.png" OF oMenuA
         MENUITEM "Copy" ACTION hwg_MsgInfo("copy") BITMAP "images/copy.png" OF oMenuA
         MENUITEM "Paste" ACTION hwg_MsgInfo("paste") BITMAP "images/paste.png" OF oMenuA
         SEPARATOR OF oMenuA
         MENUITEM "Sair" ACTION oApp:quit() OF oMenuA
      END MENU
      BEGIN MENU oMenuB TITLE "Ajuda" OF oMenuBar
         MENUITEM "Sobre este programa" ACTION hwg_MsgInfo("Teste com MDI", "Sobre este programa") OF oMenuB
         MENUITEM "Sobre o Qt" ACTION oApp:aboutQt() OF oMenuB
      END MENU
   END MENUBAR

   BEGIN TOOLBAR oToolBar OF oMainWindow
      TOOLBARITEM "New" ACTION hwg_MsgInfo("new") BITMAP "images/new.png" OF oToolBar
      TOOLBARITEM "Open" ACTION hwg_MsgInfo("open") BITMAP "images/open.png" OF oToolBar
      TOOLBARITEM "Save" ACTION hwg_MsgInfo("save") BITMAP "images/save.png" OF oToolBar
      SEPARATOR OF oToolBar
      TOOLBARITEM "Cut" ACTION hwg_MsgInfo("cut") BITMAP "images/cut.png" OF oToolBar
      TOOLBARITEM "Copy" ACTION hwg_MsgInfo("copy") BITMAP "images/copy.png" OF oToolBar
      TOOLBARITEM "Paste" ACTION hwg_MsgInfo("paste") BITMAP "images/paste.png" OF oToolBar
   END TOOLBAR

   ACTIVATE WINDOW oMainWindow

   oApp:exec()

   oMainWindow:delete()

   oApp:delete()

RETURN
