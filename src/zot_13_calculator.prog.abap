REPORT zot_06_calculator.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: p_val1 TYPE i,
              p_val2 TYPE i.
SELECTION-SCREEN END OF BLOCK b1.

SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
  PARAMETERS: p_topla RADIOBUTTON GROUP g1,
              p_cikar RADIOBUTTON GROUP g1,
              p_carp  RADIOBUTTON GROUP g1,
              p_bol   RADIOBUTTON GROUP g1.
SELECTION-SCREEN END OF BLOCK b2.

START-OF-SELECTION.
DATA(gv_val1) = p_val1.
DATA(gv_val2) = p_val2.
DATA gv_sonuc TYPE p decimals 5.

if p_topla = 'X'.

  gv_sonuc = gv_val1 + gv_val2.

  elseif p_cikar = 'X'.

    gv_sonuc = gv_val1 - gv_val2.

  elseif p_carp = 'X'.

    gv_sonuc = gv_val1 * gv_val2.

  elseif p_bol = 'X'.

    if gv_val2 = 0.

    TRY.

        gv_sonuc = gv_val1 / 0.

        CATCH cx_sy_zerodivide.

        MESSAGE 'Invalid Statement' TYPE 'E'.

        ENDTRY.

        WRITE:  gv_val1.

        endif.

     gv_sonuc = gv_val1 / gv_val2.



endif.


cl_demo_output=>write( gv_sonuc ).
cl_demo_output=>display(  ).
