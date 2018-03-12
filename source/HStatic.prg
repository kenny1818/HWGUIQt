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

CLASS HStatic INHERIT HControl

   METHOD new
   METHOD activate

ENDCLASS

METHOD new (oParent,nX,nY,nWidth,nHeight,cToolTip,cStatusTip,cWhatsThis,cStyleSheet,oFont,cText,bOnInit) CLASS HStatic

   IF valtype(oParent) == "O"
      ::oQt := QLabel():new(oParent:oQt)
   ELSE
      IF valtype(HFILO():last()) == "O"
         ::oQt := QLabel():new(HFILO():last():oQt)
      ELSE
         ::oQt := QLabel():new()
      ENDIF
   ENDIF

   IF valtype(nX) == "N" .AND. valtype(nY) == "N"
      ::oQt:move(nX,nY)
   ENDIF

   IF valtype(nWidth) == "N" .AND. valtype(nHeight) == "N"
      ::oQt:resize(nWidth,nHeight)
   ENDIF

   IF valtype(cToolTip) == "C"
      ::oQt:setToolTip(cToolTip)
   ENDIF

   IF valtype(cStatusTip) == "C"
      ::oQt:setStatusTip(cStatusTip)
   ENDIF

   IF valtype(cWhatsThis) == "C"
      ::oQt:setWhatsThis(cWhatsThis)
   ENDIF

   IF valtype(cStyleSheet) == "C"
      ::oQt:setStyleSheet(cStyleSheet)
   ENDIF

   IF valtype(oFont) == "O"
      ::oQt:setFont(oFont:oQt)
   ENDIF

   IF valtype(oFont) == "O"
      ::oQt:setFont(oFont:oQt)
   ENDIF

   IF valtype(cText) == "C"
      ::oQt:setText(cText)
   ENDIF

   IF valtype(bOnInit) == "B"
      ::bInit := bOnInit
   ENDIF

   // atualiza propriedades do objeto

   ::nLeft   := ::oQt:x()
   ::nTop    := ::oQt:y()
   ::nWidth  := ::oQt:width()
   ::nHeight := ::oQt:height()

   ::activate()

RETURN self

METHOD activate () CLASS HStatic

   IF valtype(::bInit) == "B"
      eval(::bInit)
   ENDIF

RETURN NIL
