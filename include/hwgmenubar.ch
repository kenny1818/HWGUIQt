/*

  HWGUIQt - m�dulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand BEGIN MENUBAR <oObj> ;
          [ OF <oParent> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          [ <class:CLASS> <className> ] ;
          [ <lDisabled:DISABLED> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGMenuBar)():new( <oParent>, ;
                                      <cStyleSheet>, ;
                                      <.lDisabled.> )

#xcommand END MENUBAR => HWGFILO():remove()
