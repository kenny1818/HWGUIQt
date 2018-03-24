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

CLASS HWGCustomWindow INHERIT HWGObject

   //DATA nLeft          // coordenada x do widget
   ACCESS nLeft INLINE ::oQt:x()
   ASSIGN nLeft(nX) INLINE ::oQt:move(nX,::oQt:y())
   //DATA nTop           // coordenada y do widget
   ACCESS nTop INLINE ::oQt:y()
   ASSIGN nTop(nY) INLINE ::oQt:move(::oQt:x(),nY)
   //DATA nWidth         // largura do widget
   ACCESS nWidth INLINE ::oQt:width()
   ASSIGN nWidth(nWidth) INLINE ::oQt:resize(nWidth,::oQt:height())
   //DATA nHeight        // altura do widget
   ACCESS nHeight INLINE ::oQt:height()
   ASSIGN nHeight(nHeight) INLINE ::oQt:resize(::oQt:width(),nHeight)

   DATA lHide INIT .F. // .T. = visivel .F. = invisivel

   ACCESS lEnabled INLINE ::oQt:isEnabled()
   ASSIGN lEnabled(lValue) INLINE ::oQt:setEnabled(lValue)

   ACCESS cToolTip INLINE ::oQt:toolTip()
   ASSIGN cToolTip(cToolTip) INLINE ::oQt:setToolTip(cToolTip)

   ACCESS cStatusTip INLINE ::oQt:statusTip()
   ASSIGN cStatusTip(cStatusTip) INLINE ::oQt:setStatusTip(cStatusTip)

   ACCESS cWhatsThis INLINE ::oQt:whatsThis()
   ASSIGN cWhatsThis(cWhatsThis) INLINE ::oQt:setWhatsThis(cWhatsThis)

   ACCESS cStyleSheet INLINE ::oQt:styleSheet()
   ASSIGN cStyleSheet(cStyleSheet) INLINE ::oQt:setStyleSheet(cStyleSheet)

// TODO: corrigir
//    ACCESS oFont INLINE ::oQt:font()
//    ASSIGN oFont(oFont) INLINE ::oQt:setFont(oFont)

   DATA bInit
   DATA bSize
   DATA bPaint
   DATA bGFocus
   DATA bLFocus
   DATA bExit

   METHOD configureGeometry
   METHOD configureTips
   METHOD configureStyleSheet
   METHOD configureFont
   METHOD configureColors

   METHOD move
   METHOD show
   METHOD hide
   METHOD enable
   METHOD disable
   METHOD isEnabled
   METHOD setFocus

//    METHOD onSize
//    METHOD onPaint
//    METHOD onGFocus
//    METHOD onLFocus

ENDCLASS

METHOD configureGeometry ( nX, nY, nWidth, nHeight ) CLASS HWGCustomWindow

   IF valtype(nX) == "N"
      ::oQt:move(nX,::oQt:y())
   ENDIF

   IF valtype(nY) == "N"
      ::oQt:move(::oQt:x(),nY)
   ENDIF

   IF valtype(nWidth) == "N"
      ::oQt:resize(nWidth,::oQt:height())
   ENDIF

   IF valtype(nHeight) == "N"
      ::oQt:resize(::oQt:width(),nHeight)
   ENDIF

RETURN NIL

METHOD configureTips ( cToolTip, cStatusTip, cWhatsThis ) CLASS HWGCustomWindow

   IF valtype(cToolTip) == "C"
      ::oQt:setToolTip(cToolTip)
   ENDIF

   IF valtype(cStatusTip) == "C"
      ::oQt:setStatusTip(cStatusTip)
   ENDIF

   IF valtype(cWhatsThis) == "C"
      ::oQt:setWhatsThis(cWhatsThis)
   ENDIF

RETURN NIL

METHOD configureStyleSheet ( cStyleSheet ) CLASS HWGCustomWindow

   IF valtype(cStyleSheet) == "C"
      ::oQt:setStyleSheet(cStyleSheet)
   ENDIF

RETURN NIL

METHOD configureFont ( oFont ) CLASS HWGCustomWindow

   IF valtype(oFont) == "O"
      ::oQt:setFont(oFont:oQt)
   ENDIF

RETURN NIL

METHOD configureColors ( nColorRole1, xColor, nColorRole2, xBackColor ) CLASS HWGCustomWindow

   // cor de frente (fore)
   IF valtype(xColor) == "N"
      ::oQt:palette():setColor(nColorRole1, QColor():new():setRGB(xColor))
   ELSEIF valtype(xColor) == "C"
      ::oQt:palette():setColor(nColorRole1, QColor():new(xColor))
   ELSEIF valtype(xColor) == "A"
      IF len(xColor) == 3
         ::oQt:palette():setColor(nColorRole1, QColor():new(xColor[1],xColor[2],xColor[3]))
      ENDIF
   ELSEIF valtype(xColor) == "O"
      ::oQt:palette():setColor(nColorRole1, xColor:oQt)
   ENDIF

   // cor de fundo (back)
   IF valtype(xBackColor) == "N"
      ::oQt:setAutoFillBackground(.T.)
      ::oQt:palette():setColor(nColorRole2, QColor():new():setRGB(xBackColor))
   ELSEIF valtype(xBackColor) == "C"
      ::oQt:setAutoFillBackground(.T.)
      ::oQt:palette():setColor(nColorRole2, QColor():new(xBackColor))
   ELSEIF valtype(xBackColor) == "A"
      IF len(xBackColor) == 3
         ::oQt:setAutoFillBackground(.T.)
         ::oQt:palette():setColor(nColorRole2, QColor():new(xBackColor[1],xBackColor[2],xBackColor[3]))
      ENDIF
   ELSEIF valtype(xBackColor) == "O"
      ::oQt:setAutoFillBackground(.T.)
      ::oQt:palette():setColor(nColorRole2, xBackColor:oQt)
   ENDIF

RETURN NIL

METHOD move ( nX, nY, nWidth, nHeight ) CLASS HWGCustomWindow

   // checa os par�metros e atualiza as propriedades do objeto

   IF valtype(nX) == "N"
      ::nLeft := nX
   ENDIF

   IF valtype(nY) == "N"
      ::nTop := nY
   ENDIF

   IF valtype(nWidth) == "N"
      ::nWidth := nWidth
   ENDIF

   IF valtype(nHeight) == "N"
      ::nHeight := nHeight
   ENDIF

   // move para a posi��o determinada
   ::oQt:move(::nLeft,::nTop)

   // ajusta para o tamanho determinado
   ::oQt:resize(::nWidth,::nHeight)

RETURN NIL

METHOD show () CLASS HWGCustomWindow

   ::oQt:show()

   ::lHide := .F.

RETURN NIL

METHOD hide () CLASS HWGCustomWindow

   ::oQt:hide()

   ::lHide := .T.

RETURN NIL

METHOD enable () CLASS HWGCustomWindow

   ::oQt:setEnabled(.T.)

RETURN NIL

METHOD disable () CLASS HWGCustomWindow

   ::oQt:setEnabled(.F.)

RETURN NIL

METHOD isEnabled ()  CLASS HWGCustomWindow

RETURN ::oQt:isEnabled()

METHOD SetFocus () CLASS HWGCustomWindow

   ::oQt:setFocus()

RETURN NIL
