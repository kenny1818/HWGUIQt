/*

  HWGUIQt - m�dulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand @ <nX>,<nY> DIAL [ <oObj> INIT ] <nValue> ;
          [ OF <oParent> ] ;
          [ SIZE <nWidth>,<nHeight> ] ;
          [ TOOLTIP <cToolTip> ] ;
          [ STATUSTIP <cStatusTip> ] ;
          [ WHATSTHIS <cWhatsThis> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          [ FONT <oFont> ] ;
          [ COLOR <xForeColor> ] ;
          [ BACKCOLOR <xBackColor> ] ;
          [ RANGE <nMinimum>,<nMaximum> ] ;
          [ <lNotchesVisible : NOTCHESVISIBLE> ] ;
          [ ON INIT <bInit> ] ;
          [ ON SIZE <bSize> ] ;
          [ ON MOVE <bMove> ] ;
          [ ON PAINT <bPaint> ] ;
          [ ON GETFOCUS <bGFocus> ] ;
          [ ON LOSTFOCUS <bLFocus> ] ;
          [ ON SHOW <bShow> ] ;
          [ ON HIDE <bHide> ] ;
          [ <lDisabled:DISABLED> ] ;
          [ <lInvisible:INVISIBLE> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGDial)():new( ;
             <oParent>, ;
             <nX>, ;
             <nY>, ;
             <nWidth>, ;
             <nHeight>, ;
             <cToolTip>, ;
             <cStatusTip>, ;
             <cWhatsThis>, ;
             <cStyleSheet>, ;
             <oFont>, ;
             <xForeColor>, ;
             <xBackColor>, ;
             <nValue>, ;
             <nMinimum>, ;
             <nMaximum>, ;
             <.lNotchesVisible.>, ;
             <{bInit}>, ;
             <{bSize}>, ;
             <{bMove}>, ;
             <{bPaint}>, ;
             <{bGFocus}>, ;
             <{bLFocus}>, ;
             <{bShow}>, ;
             <{bHide}>, ;
             <.lDisabled.>, ;
             <.lInvisible.> ) ;;
          [ <oObj>:cName := <(oObj)> ]

#xcommand @ <nX>,<nY> DIAL [ <oObj> VAR ] <xVar> ;
          [ OF <oParent> ] ;
          [ SIZE <nWidth>,<nHeight> ] ;
          [ TOOLTIP <cToolTip> ] ;
          [ STATUSTIP <cStatusTip> ] ;
          [ WHATSTHIS <cWhatsThis> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          [ FONT <oFont> ] ;
          [ COLOR <xForeColor> ] ;
          [ BACKCOLOR <xBackColor> ] ;
          [ RANGE <nMinimum>,<nMaximum> ] ;
          [ <lNotchesVisible : NOTCHESVISIBLE> ] ;
          [ ON INIT <bInit> ] ;
          [ ON SIZE <bSize> ] ;
          [ ON MOVE <bMove> ] ;
          [ ON PAINT <bPaint> ] ;
          [ ON GETFOCUS <bGFocus> ] ;
          [ ON LOSTFOCUS <bLFocus> ] ;
          [ ON SHOW <bShow> ] ;
          [ ON HIDE <bHide> ] ;
          [ <lDisabled:DISABLED> ] ;
          [ <lInvisible:INVISIBLE> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGDial)():new( ;
             <oParent>, ;
             <nX>, ;
             <nY>, ;
             <nWidth>, ;
             <nHeight>, ;
             <cToolTip>, ;
             <cStatusTip>, ;
             <cWhatsThis>, ;
             <cStyleSheet>, ;
             <oFont>, ;
             <xForeColor>, ;
             <xBackColor>, ;
             <xVar>, ;
             <nMinimum>, ;
             <nMaximum>, ;
             <.lNotchesVisible.>, ;
             <{bInit}>, ;
             <{bSize}>, ;
             <{bMove}>, ;
             <{bPaint}>, ;
             <{bGFocus}>, ;
             <{bLFocus}>, ;
             <{bShow}>, ;
             <{bHide}>, ;
             <.lDisabled.>, ;
             <.lInvisible.> ) ;;
          [ <oObj>:cName := <(oObj)> ]
