*-----------------------------------------------------------------------------*
* TableOfEaster | EndTheProgram_Events.prg
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_EndTheProgram_btn_YES()
*-----------------------------------------------------------------------------*

  RELEASE WINDOW ALL

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_EndTheProgram_btn_NOT()
*-----------------------------------------------------------------------------*

  aFrm := CTK_Release( aFrm )

  ThisWindow.Release

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_EndTheProgram_OnGotFocus()
*-----------------------------------------------------------------------------*

  SetCenterModalWindow( aFormProperty )

  SetAdjustControls( aFrmControls )

  CTK_DrawBorder( "win_EndTheProgram" )

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
*-----------------------------------------------------------------------------*