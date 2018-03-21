/*

  HWGUIQt - m�dulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifdef __QT4XHB__
#include "qt4xhb.ch"
#endif
#ifdef __QT5XHB__
#include "qt5xhb.ch"
#endif
#include "hbclass.ch"

CLASS HWGWindow INHERIT HWGCustomWindow

   DATA lMain INIT .F.
   DATA lChild INIT .F.
   DATA lMdi INIT .F.

   DATA lClose INIT .F.

   DATA oEventLoop
   DATA oMdiArea

   METHOD getText
   METHOD setText

   METHOD maximize
   METHOD minimize
   METHOD restore
   METHOD fullScreen

ENDCLASS

// retorna o t�tulo da janela
METHOD getText () CLASS HWGWindow
RETURN ::oQt:windowTitle()

// define o t�tulo da janela
METHOD setText (cText) CLASS HWGWindow
   ::oQt:setWindowTitle(cTitle)
RETURN NIL

METHOD maximize () CLASS HWGWindow

   ::oQt:showMaximized()

RETURN NIL

METHOD minimize () CLASS HWGWindow

   ::oQt:showMinimized()

RETURN NIL

METHOD restore () CLASS HWGWindow

   ::oQt:showNormal()

RETURN NIL

METHOD fullScreen () CLASS HWGWindow

   ::oQt:showFullScreen()

RETURN NIL
