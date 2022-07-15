*-----------------------------------------------------------------------------*
* TableOfEaster  | MakeNavigation.prg
*-----------------------------------------------------------------------------*
#include "toe_hmg.ch"
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE MakeNavigation()
*-----------------------------------------------------------------------------*

  LOCAL nX
  LOCAL nY

  LOCAL nBreak := 5

  LOCAL maxX := 6
  LOCAL maxY := 2

  LOCAL nWidth  := ( ROUND( ( ( 1530 - ( 200 * 2 ) - ( nBreak * ( maxX - 1 ) ) ) / maxX ) , 0 ) ) // * APP_ADJUST_X
  LOCAL nHeigth := ( 34 ) * APP_ADJUST_Y

  LOCAL cLabel
  LOCAL cValue

  DECLARE WINDOW win_Main


  FOR nX := 1 TO maxX


    FOR nY := 1 TO maxY


      cValue := STRZERO( nY + ( maxY * ( nX - 1 ) ) , 2 )

      cLabel := "Label_Menu_" + cValue


      IF !IsControlDefined( &cLabel , win_Main )

        DEFINE LABEL &(cLabel)
          PARENT    win_Main
          ROW       ( 30 + ( nHeigth * ( nY ) ) + ( ( nY - 1 ) * nBreak ) ) * APP_ADJUST_Y
          COL       ( 200 + 3 + ( nWidth * ( nX - 1 ) ) + ( ( nX - 1 ) * nBreak ) ) * APP_ADJUST_X
          WIDTH     nWidth * APP_ADJUST_X
          HEIGHT    nHeigth * APP_ADJUST_Y
          VALUE ALLTRIM( STR( 1700 + ( ( nY - 1) * 50 ) + ( nX - 1 ) * 100 ) ) + "-" + ALLTRIM( STR( 1749 + ( ( nY -1 ) * 50 ) + ( nX - 1 ) * 100 ) )
          FONTNAME fTIMES
          FONTSIZE 16 * APP_ADJUST_X
          TOOLTIP ""
          FONTBOLD .T.
          FONTITALIC .F.
          FONTUNDERLINE .F.
          FONTSTRIKEOUT .F.
          HELPID Nil
          VISIBLE .T.
          TRANSPARENT .F.

          DO CASE

            CASE cValue == "01"

              ACTION win_Main_label( "1700" )


#IFDEF _HMG_2_

              ONMOUSEHOVER win_Main_lbl_OnMouseHover( 1 )
              ONMOUSELEAVE win_Main_lbl_OnMouseLeave( 1 )

#ENDIF


            CASE cValue == "02"

              ACTION win_Main_label( "1750" )


#IFDEF _HMG_2_

              ONMOUSEHOVER win_Main_lbl_OnMouseHover( 2 )
              ONMOUSELEAVE win_Main_lbl_OnMouseLeave( 2 )

#ENDIF


            CASE cValue == "03"

              ACTION win_Main_label( "1800" )


#IFDEF _HMG_2_

              ONMOUSEHOVER win_Main_lbl_OnMouseHover( 3 )
              ONMOUSELEAVE win_Main_lbl_OnMouseLeave( 3 )

#ENDIF


            CASE cValue == "04"

              ACTION win_Main_label( "1850" )


#IFDEF _HMG_2_

              ONMOUSEHOVER win_Main_lbl_OnMouseHover( 4 )
              ONMOUSELEAVE win_Main_lbl_OnMouseLeave( 4 )

#ENDIF


            CASE cValue == "05"

              ACTION win_Main_label( "1900" )


#IFDEF _HMG_2_

              ONMOUSEHOVER win_Main_lbl_OnMouseHover( 5 )
              ONMOUSELEAVE win_Main_lbl_OnMouseLeave( 5 )

#ENDIF


            CASE cValue == "06"

              ACTION win_Main_label( "1950" )


#IFDEF _HMG_2_

              ONMOUSEHOVER win_Main_lbl_OnMouseHover( 6 )
              ONMOUSELEAVE win_Main_lbl_OnMouseLeave( 6 )

#ENDIF


            CASE cValue == "07"

              ACTION win_Main_label( "2000" )


#IFDEF _HMG_2_

              ONMOUSEHOVER win_Main_lbl_OnMouseHover( 7 )
              ONMOUSELEAVE win_Main_lbl_OnMouseLeave( 7 )

#ENDIF


            CASE cValue == "08"

              ACTION win_Main_label( "2050" )


#IFDEF _HMG_2_

              ONMOUSEHOVER win_Main_lbl_OnMouseHover( 8 )
              ONMOUSELEAVE win_Main_lbl_OnMouseLeave( 8 )

#ENDIF


            CASE cValue == "09"

              ACTION win_Main_label( "2100" )


#IFDEF _HMG_2_

              ONMOUSEHOVER win_Main_lbl_OnMouseHover( 9 )
              ONMOUSELEAVE win_Main_lbl_OnMouseLeave( 9 )

#ENDIF


            CASE cValue == "10"

              ACTION win_Main_label( "2150" )


#IFDEF _HMG_2_

              ONMOUSEHOVER win_Main_lbl_OnMouseHover( 10 )
              ONMOUSELEAVE win_Main_lbl_OnMouseLeave( 10 )

#ENDIF


            CASE cValue == "11"

              ACTION win_Main_label( "2200" )


#IFDEF _HMG_2_

              ONMOUSEHOVER win_Main_lbl_OnMouseHover( 11 )
              ONMOUSELEAVE win_Main_lbl_OnMouseLeave( 11 )

#ENDIF


            CASE cValue == "12"

              ACTION win_Main_label( "2250" )


#IFDEF _HMG_2_

              ONMOUSEHOVER win_Main_lbl_OnMouseHover( 12 )
              ONMOUSELEAVE win_Main_lbl_OnMouseLeave( 12 )

#ENDIF


          END CASE


          AUTOSIZE .F.
          BACKCOLOR Nil
          FONTCOLOR Nil
          CENTERALIGN .T.


#IFDEF _HMG_2_

          VCENTERALIGN .T.

#ENDIF


          BORDER .T.
        END LABEL


      ENDIF


    NEXT nY


  NEXT nX


#IFDEF _HMG_3_


    HMG_ChangeWindowStyle( win_Main.Label_Menu_01.HANDLE , 0x00800200 , Nil , .F. , .T. )
    HMG_ChangeWindowStyle( win_Main.Label_Menu_02.HANDLE , 0x00800200 , Nil , .F. , .T. )
    HMG_ChangeWindowStyle( win_Main.Label_Menu_03.HANDLE , 0x00800200 , Nil , .F. , .T. )
    HMG_ChangeWindowStyle( win_Main.Label_Menu_04.HANDLE , 0x00800200 , Nil , .F. , .T. )
    HMG_ChangeWindowStyle( win_Main.Label_Menu_05.HANDLE , 0x00800200 , Nil , .F. , .T. )
    HMG_ChangeWindowStyle( win_Main.Label_Menu_06.HANDLE , 0x00800200 , Nil , .F. , .T. )
    HMG_ChangeWindowStyle( win_Main.Label_Menu_07.HANDLE , 0x00800200 , Nil , .F. , .T. )
    HMG_ChangeWindowStyle( win_Main.Label_Menu_08.HANDLE , 0x00800200 , Nil , .F. , .T. )
    HMG_ChangeWindowStyle( win_Main.Label_Menu_09.HANDLE , 0x00800200 , Nil , .F. , .T. )
    HMG_ChangeWindowStyle( win_Main.Label_Menu_10.HANDLE , 0x00800200 , Nil , .F. , .T. )
    HMG_ChangeWindowStyle( win_Main.Label_Menu_11.HANDLE , 0x00800200 , Nil , .F. , .T. )
    HMG_ChangeWindowStyle( win_Main.Label_Menu_12.HANDLE , 0x00800200 , Nil , .F. , .T. )


    EventProcessAllHookMessage( EventCreate( "win_Main_lbl_OnMouseHoverLeave" , win_Main.Label_Menu_01.HANDLE ) , .T.)
    EventProcessAllHookMessage( EventCreate( "win_Main_lbl_OnMouseHoverLeave" , win_Main.Label_Menu_02.HANDLE ) , .T.)
    EventProcessAllHookMessage( EventCreate( "win_Main_lbl_OnMouseHoverLeave" , win_Main.Label_Menu_03.HANDLE ) , .T.)
    EventProcessAllHookMessage( EventCreate( "win_Main_lbl_OnMouseHoverLeave" , win_Main.Label_Menu_04.HANDLE ) , .T.)
    EventProcessAllHookMessage( EventCreate( "win_Main_lbl_OnMouseHoverLeave" , win_Main.Label_Menu_05.HANDLE ) , .T.)
    EventProcessAllHookMessage( EventCreate( "win_Main_lbl_OnMouseHoverLeave" , win_Main.Label_Menu_06.HANDLE ) , .T.)
    EventProcessAllHookMessage( EventCreate( "win_Main_lbl_OnMouseHoverLeave" , win_Main.Label_Menu_07.HANDLE ) , .T.)
    EventProcessAllHookMessage( EventCreate( "win_Main_lbl_OnMouseHoverLeave" , win_Main.Label_Menu_08.HANDLE ) , .T.)
    EventProcessAllHookMessage( EventCreate( "win_Main_lbl_OnMouseHoverLeave" , win_Main.Label_Menu_09.HANDLE ) , .T.)
    EventProcessAllHookMessage( EventCreate( "win_Main_lbl_OnMouseHoverLeave" , win_Main.Label_Menu_10.HANDLE ) , .T.)
    EventProcessAllHookMessage( EventCreate( "win_Main_lbl_OnMouseHoverLeave" , win_Main.Label_Menu_11.HANDLE ) , .T.)
    EventProcessAllHookMessage( EventCreate( "win_Main_lbl_OnMouseHoverLeave" , win_Main.Label_Menu_12.HANDLE ) , .T.)


#ENDIF


RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_label( xcYear )
*-----------------------------------------------------------------------------*

  DECLARE WINDOW win_Main


  Do_Events()
  win_Main.SetFocus()


  DO CASE

    CASE xcYear == "1700"

      win_Main.Label_Menu_01.BackColor := BLUE
      win_Main.Label_Menu_02.BackColor := GRAY
      win_Main.Label_Menu_03.BackColor := GRAY
      win_Main.Label_Menu_04.BackColor := GRAY
      win_Main.Label_Menu_05.BackColor := GRAY
      win_Main.Label_Menu_06.BackColor := GRAY
      win_Main.Label_Menu_07.BackColor := GRAY
      win_Main.Label_Menu_08.BackColor := GRAY
      win_Main.Label_Menu_09.BackColor := GRAY
      win_Main.Label_Menu_10.BackColor := GRAY
      win_Main.Label_Menu_11.BackColor := GRAY
      win_Main.Label_Menu_12.BackColor := GRAY
      nYear := 1700
      Do_Events()


    CASE xcYear == "1750"

      win_Main.Label_Menu_01.BackColor := GRAY
      win_Main.Label_Menu_02.BackColor := BLUE
      win_Main.Label_Menu_03.BackColor := GRAY
      win_Main.Label_Menu_04.BackColor := GRAY
      win_Main.Label_Menu_05.BackColor := GRAY
      win_Main.Label_Menu_06.BackColor := GRAY
      win_Main.Label_Menu_07.BackColor := GRAY
      win_Main.Label_Menu_08.BackColor := GRAY
      win_Main.Label_Menu_09.BackColor := GRAY
      win_Main.Label_Menu_10.BackColor := GRAY
      win_Main.Label_Menu_11.BackColor := GRAY
      win_Main.Label_Menu_12.BackColor := GRAY
      nYear := 1750
      Do_Events()


   CASE xcYear == "1800"

      win_Main.Label_Menu_01.BackColor := GRAY
      win_Main.Label_Menu_02.BackColor := GRAY
      win_Main.Label_Menu_03.BackColor := BLUE
      win_Main.Label_Menu_04.BackColor := GRAY
      win_Main.Label_Menu_05.BackColor := GRAY
      win_Main.Label_Menu_06.BackColor := GRAY
      win_Main.Label_Menu_07.BackColor := GRAY
      win_Main.Label_Menu_08.BackColor := GRAY
      win_Main.Label_Menu_09.BackColor := GRAY
      win_Main.Label_Menu_10.BackColor := GRAY
      win_Main.Label_Menu_11.BackColor := GRAY
      win_Main.Label_Menu_12.BackColor := GRAY
      nYear := 1800
      Do_Events()


    CASE xcYear == "1850"

      win_Main.Label_Menu_01.BackColor := GRAY
      win_Main.Label_Menu_02.BackColor := GRAY
      win_Main.Label_Menu_03.BackColor := GRAY
      win_Main.Label_Menu_04.BackColor := BLUE
      win_Main.Label_Menu_05.BackColor := GRAY
      win_Main.Label_Menu_06.BackColor := GRAY
      win_Main.Label_Menu_07.BackColor := GRAY
      win_Main.Label_Menu_08.BackColor := GRAY
      win_Main.Label_Menu_09.BackColor := GRAY
      win_Main.Label_Menu_10.BackColor := GRAY
      win_Main.Label_Menu_11.BackColor := GRAY
      win_Main.Label_Menu_12.BackColor := GRAY
      nYear := 1850
      Do_Events()


    CASE xcYear == "1900"

      win_Main.Label_Menu_01.BackColor := GRAY
      win_Main.Label_Menu_02.BackColor := GRAY
      win_Main.Label_Menu_03.BackColor := GRAY
      win_Main.Label_Menu_04.BackColor := GRAY
      win_Main.Label_Menu_05.BackColor := BLUE
      win_Main.Label_Menu_06.BackColor := GRAY
      win_Main.Label_Menu_07.BackColor := GRAY
      win_Main.Label_Menu_08.BackColor := GRAY
      win_Main.Label_Menu_09.BackColor := GRAY
      win_Main.Label_Menu_10.BackColor := GRAY
      win_Main.Label_Menu_11.BackColor := GRAY
      win_Main.Label_Menu_12.BackColor := GRAY
      nYear := 1900
      Do_Events()


    CASE xcYear == "1950"

      win_Main.Label_Menu_01.BackColor := GRAY
      win_Main.Label_Menu_02.BackColor := GRAY
      win_Main.Label_Menu_03.BackColor := GRAY
      win_Main.Label_Menu_04.BackColor := GRAY
      win_Main.Label_Menu_05.BackColor := GRAY
      win_Main.Label_Menu_06.BackColor := BLUE
      win_Main.Label_Menu_07.BackColor := GRAY
      win_Main.Label_Menu_08.BackColor := GRAY
      win_Main.Label_Menu_09.BackColor := GRAY
      win_Main.Label_Menu_10.BackColor := GRAY
      win_Main.Label_Menu_11.BackColor := GRAY
      win_Main.Label_Menu_12.BackColor := GRAY
      nYear := 1950
      Do_Events()


    CASE xcYear == "2000"

      win_Main.Label_Menu_01.BackColor := GRAY
      win_Main.Label_Menu_02.BackColor := GRAY
      win_Main.Label_Menu_03.BackColor := GRAY
      win_Main.Label_Menu_04.BackColor := GRAY
      win_Main.Label_Menu_05.BackColor := GRAY
      win_Main.Label_Menu_06.BackColor := GRAY
      win_Main.Label_Menu_07.BackColor := BLUE
      win_Main.Label_Menu_08.BackColor := GRAY
      win_Main.Label_Menu_09.BackColor := GRAY
      win_Main.Label_Menu_10.BackColor := GRAY
      win_Main.Label_Menu_11.BackColor := GRAY
      win_Main.Label_Menu_12.BackColor := GRAY
      nYear := 2000
      Do_Events()


    CASE xcYear == "2050"

      win_Main.Label_Menu_01.BackColor := GRAY
      win_Main.Label_Menu_02.BackColor := GRAY
      win_Main.Label_Menu_03.BackColor := GRAY
      win_Main.Label_Menu_04.BackColor := GRAY
      win_Main.Label_Menu_05.BackColor := GRAY
      win_Main.Label_Menu_06.BackColor := GRAY
      win_Main.Label_Menu_07.BackColor := GRAY
      win_Main.Label_Menu_08.BackColor := BLUE
      win_Main.Label_Menu_09.BackColor := GRAY
      win_Main.Label_Menu_10.BackColor := GRAY
      win_Main.Label_Menu_11.BackColor := GRAY
      win_Main.Label_Menu_12.BackColor := GRAY
      nYear := 2050
      Do_Events()


    CASE xcYear == "2100"

      win_Main.Label_Menu_01.BackColor := GRAY
      win_Main.Label_Menu_02.BackColor := GRAY
      win_Main.Label_Menu_03.BackColor := GRAY
      win_Main.Label_Menu_04.BackColor := GRAY
      win_Main.Label_Menu_05.BackColor := GRAY
      win_Main.Label_Menu_06.BackColor := GRAY
      win_Main.Label_Menu_07.BackColor := GRAY
      win_Main.Label_Menu_08.BackColor := GRAY
      win_Main.Label_Menu_09.BackColor := BLUE
      win_Main.Label_Menu_10.BackColor := GRAY
      win_Main.Label_Menu_11.BackColor := GRAY
      win_Main.Label_Menu_12.BackColor := GRAY
      nYear := 2100
      Do_Events()


    CASE xcYear == "2150"

      win_Main.Label_Menu_01.BackColor := GRAY
      win_Main.Label_Menu_02.BackColor := GRAY
      win_Main.Label_Menu_03.BackColor := GRAY
      win_Main.Label_Menu_04.BackColor := GRAY
      win_Main.Label_Menu_05.BackColor := GRAY
      win_Main.Label_Menu_06.BackColor := GRAY
      win_Main.Label_Menu_07.BackColor := GRAY
      win_Main.Label_Menu_08.BackColor := GRAY
      win_Main.Label_Menu_09.BackColor := GRAY
      win_Main.Label_Menu_10.BackColor := BLUE
      win_Main.Label_Menu_11.BackColor := GRAY
      win_Main.Label_Menu_12.BackColor := GRAY
      nYear := 2150
      Do_Events()


    CASE xcYear == "2200"

      win_Main.Label_Menu_01.BackColor := GRAY
      win_Main.Label_Menu_02.BackColor := GRAY
      win_Main.Label_Menu_03.BackColor := GRAY
      win_Main.Label_Menu_04.BackColor := GRAY
      win_Main.Label_Menu_05.BackColor := GRAY
      win_Main.Label_Menu_06.BackColor := GRAY
      win_Main.Label_Menu_07.BackColor := GRAY
      win_Main.Label_Menu_08.BackColor := GRAY
      win_Main.Label_Menu_09.BackColor := GRAY
      win_Main.Label_Menu_10.BackColor := GRAY
      win_Main.Label_Menu_11.BackColor := BLUE
      win_Main.Label_Menu_12.BackColor := GRAY
      nYear := 2200
      Do_Events()


    CASE xcYear == "2250"

      win_Main.Label_Menu_01.BackColor := GRAY
      win_Main.Label_Menu_02.BackColor := GRAY
      win_Main.Label_Menu_03.BackColor := GRAY
      win_Main.Label_Menu_04.BackColor := GRAY
      win_Main.Label_Menu_05.BackColor := GRAY
      win_Main.Label_Menu_06.BackColor := GRAY
      win_Main.Label_Menu_07.BackColor := GRAY
      win_Main.Label_Menu_08.BackColor := GRAY
      win_Main.Label_Menu_09.BackColor := GRAY
      win_Main.Label_Menu_10.BackColor := GRAY
      win_Main.Label_Menu_11.BackColor := GRAY
      win_Main.Label_Menu_12.BackColor := BLUE
      nYear := 2250
      Do_Events()


  END CASE


  MakeTableOfEasterSunday()
  Do_Events()

RETURN
*-----------------------------------------------------------------------------*


#IFDEF _HMG_2_
*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_OnMouseHover( xnLabel )
*-----------------------------------------------------------------------------*

  LOCAL RGB


  IF xnLabel == 1

    RGB := GetProperty( "win_Main" , "Label_Menu_01" , "BackColor" )


    IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 128

      SetProperty( "win_Main" , "Label_Menu_01" , "BackColor" , { 128 , 128 , 255 } )

    ENDIF


  ENDIF


  IF xnLabel == 2

    RGB := GetProperty( "win_Main" , "Label_Menu_02" , "BackColor" )


    IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 128

      SetProperty( "win_Main" , "Label_Menu_02" , "BackColor" , { 128 , 128 , 255 } )

    ENDIF


  ENDIF


  IF xnLabel == 3

    RGB := GetProperty( "win_Main" , "Label_Menu_03" , "BackColor" )


    IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 128

      SetProperty( "win_Main" , "Label_Menu_03" , "BackColor" , { 128 , 128 , 255 } )

    ENDIF


  ENDIF


  IF xnLabel == 4

    RGB := GetProperty( "win_Main" , "Label_Menu_04" , "BackColor" )


    IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 128

      SetProperty( "win_Main" , "Label_Menu_04" , "BackColor" , { 128 , 128 , 255 } )

    ENDIF


  ENDIF


  IF xnLabel == 5

    RGB := GetProperty( "win_Main" , "Label_Menu_05" , "BackColor" )


    IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 128

      SetProperty( "win_Main" , "Label_Menu_05" , "BackColor" , { 128 , 128 , 255 } )

    ENDIF


  ENDIF


  IF xnLabel == 6

    RGB := GetProperty( "win_Main" , "Label_Menu_06" , "BackColor" )


    IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 128

      SetProperty( "win_Main" , "Label_Menu_06" , "BackColor" , { 128 , 128 , 255 } )

    ENDIF


  ENDIF


  IF xnLabel == 7

    RGB := GetProperty( "win_Main" , "Label_Menu_07" , "BackColor" )


    IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 128

      SetProperty( "win_Main" , "Label_Menu_07" , "BackColor" , { 128 , 128 , 255 } )

    ENDIF


  ENDIF


  IF xnLabel == 8

    RGB := GetProperty( "win_Main" , "Label_Menu_08" , "BackColor" )


    IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 128

      SetProperty( "win_Main" , "Label_Menu_08" , "BackColor" , { 128 , 128 , 255 } )

    ENDIF


  ENDIF


  IF xnLabel == 9

    RGB := GetProperty( "win_Main" , "Label_Menu_09" , "BackColor" )


    IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 128

      SetProperty( "win_Main" , "Label_Menu_09" , "BackColor" , { 128 , 128 , 255 } )

    ENDIF


  ENDIF


  IF xnLabel == 10

    RGB := GetProperty( "win_Main" , "Label_Menu_10" , "BackColor" )


    IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 128

      SetProperty( "win_Main" , "Label_Menu_10" , "BackColor" , { 128 , 128 , 255 } )

    ENDIF


  ENDIF


  IF xnLabel == 11

    RGB := GetProperty( "win_Main" , "Label_Menu_11" , "BackColor" )


    IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 128

      SetProperty( "win_Main" , "Label_Menu_11" , "BackColor" , { 128 , 128 , 255 } )

    ENDIF


  ENDIF


  IF xnLabel == 12

    RGB := GetProperty( "win_Main" , "Label_Menu_12" , "BackColor" )


    IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 128

      SetProperty( "win_Main" , "Label_Menu_12" , "BackColor" , { 128 , 128 , 255 } )

    ENDIF


  ENDIF


RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_OnMouseLeave( xnLabel )
*-----------------------------------------------------------------------------*

  LOCAL RGB


  IF xnLabel == 1

    RGB := GetProperty( "win_Main" , "Label_Menu_01" , "BackColor" )


    IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 255

      SetProperty( "win_Main" , "Label_Menu_01" , "BackColor" , { 128 , 128 , 128 } )

    ENDIF


  ENDIF


  IF xnLabel == 2

    RGB := GetProperty( "win_Main" , "Label_Menu_02" , "BackColor" )


    IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 255

      SetProperty( "win_Main" , "Label_Menu_02" , "BackColor" , { 128 , 128 , 128 } )

    ENDIF


  ENDIF


  IF xnLabel == 3

    RGB := GetProperty( "win_Main" , "Label_Menu_03" , "BackColor" )


    IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 255

      SetProperty( "win_Main" , "Label_Menu_03" , "BackColor" , { 128 , 128 , 128 } )

    ENDIF


  ENDIF


  IF xnLabel == 4

    RGB := GetProperty( "win_Main" , "Label_Menu_04" , "BackColor" )


    IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 255

      SetProperty( "win_Main" , "Label_Menu_04" , "BackColor" , { 128 , 128 , 128 } )

    ENDIF


  ENDIF


  IF xnLabel == 5

    RGB := GetProperty( "win_Main" , "Label_Menu_05" , "BackColor" )


    IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 255

      SetProperty( "win_Main" , "Label_Menu_05" , "BackColor" , { 128 , 128 , 128 } )

    ENDIF


  ENDIF


  IF xnLabel == 6

    RGB := GetProperty( "win_Main" , "Label_Menu_06" , "BackColor" )


    IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 255

      SetProperty( "win_Main" , "Label_Menu_06" , "BackColor" , { 128 , 128 , 128 } )

    ENDIF


  ENDIF


  IF xnLabel == 7

    RGB := GetProperty( "win_Main" , "Label_Menu_07" , "BackColor" )


    IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 255

      SetProperty( "win_Main" , "Label_Menu_07" , "BackColor" , { 128 , 128 , 128 } )

    ENDIF


  ENDIF


  IF xnLabel == 8

    RGB := GetProperty( "win_Main" , "Label_Menu_08" , "BackColor" )


    IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 255

      SetProperty( "win_Main" , "Label_Menu_08" , "BackColor" , { 128 , 128 , 128 } )

    ENDIF


  ENDIF


  IF xnLabel == 9

    RGB := GetProperty( "win_Main" , "Label_Menu_09" , "BackColor" )


    IF RGB[  1] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 255

      SetProperty( "win_Main" , "Label_Menu_09" , "BackColor" , { 128 , 128 , 128 } )

    ENDIF


  ENDIF


  IF xnLabel == 10

    RGB := GetProperty( "win_Main" , "Label_Menu_10" , "BackColor" )


    IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 255

      SetProperty( "win_Main" , "Label_Menu_10" , "BackColor" , { 128 , 128 , 128 } )

    ENDIF


  ENDIF


  IF xnLabel == 11

    RGB := GetProperty( "win_Main" , "Label_Menu_11" , "BackColor" )


    IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 255

      SetProperty( "win_Main" , "Label_Menu_11" , "BackColor" , { 128 , 128 , 128 } )

    ENDIF


  ENDIF


  IF xnLabel == 12

    RGB := GetProperty( "win_Main" , "Label_Menu_12" , "BackColor" )


    IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 255

      SetProperty( "win_Main" , "Label_Menu_12" , "BackColor" , { 128 , 128 , 128 } )

    ENDIF


  ENDIF


RETURN
*-----------------------------------------------------------------------------*
#ENDIF



#IFDEF _HMG_3_
*-----------------------------------------------------------------------------*
// http://www.hmgforum.com/viewtopic.php?f=9&t=4806
*-----------------------------------------------------------------------------*
FUNCTION win_Main_lbl_OnMouseHoverLeave()
*-----------------------------------------------------------------------------*

  STATIC lTracking := .F.
  LOCAL  nHWnd := EventHWND()
  LOCAL  nMsg  := EventMSG()
  LOCAL  cControl
  LOCAL  cForm


  SWITCH nMsg

    CASE WM_MOUSEMOVE


      IF ! lTracking

        GetControlNameByHandle( nHWnd , @cControl , @cForm )

        RGB := GetProperty ( "win_Main" , cControl , "BackColor" )


        IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 128

            SetProperty( cForm , cControl , "BackColor" , { 128 , 128 , 255 } )

        ENDIF


        lTracking := TrackMouseEvent( nHWnd )  // TME_LEAVE is default flag

      ENDIF


      EXIT


    CASE WM_MOUSELEAVE

      GetControlNameByHandle( nHWnd , @cControl , @cForm )


      RGB := GetProperty ( "win_Main" , cControl , "BackColor" )


      IF RGB[ 1 ] == 128 .AND. RGB[ 2 ] == 128 .AND. RGB[ 3 ] == 255

          SetProperty( cForm , cControl , "BackColor" , { 128 , 128 , 128 } )

      ENDIF


      lTracking := .F.

      EXIT


  ENDSWITCH


RETURN Nil
*-----------------------------------------------------------------------------*
#ENDIF


*-----------------------------------------------------------------------------*
*-----------------------------------------------------------------------------*
