*&---------------------------------------------------------------------*
*& Report zot_13_data_objects
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_13_data_objects.

*DATA: gv_ogrenci_adi    TYPE c LENGTH 10,          "predefined
*      gv_ogrenci_soyadi TYPE char12,            "data element
*      gv_tarih          TYPE sy-datum.
*
*
*gv_ogrenci_adi = 'Emir'.
*gv_ogrenci_soyadi = 'Demir'.
*gv_tarih = sy-datum.
*
*cl_demo_output=>write( gv_ogrenci_adi ).
*cl_demo_output=>write( gv_ogrenci_soyadi ).
*cl_demo_output=>write( gv_tarih ).
*
*TYPES: gty_char TYPE c LENGTH 50.
*
*DATA gv_new TYPE gty_char.
*
*cl_demo_output=>display(  ).


"if
*DATA: gv_langu TYPE sy-langu.
*
*gv_langu = sy-langu.
*
*IF gv_langu = 'T'.
*  cl_demo_output=>write( |Merhaba Dünya| ).
*ELSEIF gv_langu EQ 'E'.
*  cl_demo_output=>write( |Hello World| ).
*ELSE.
*  cl_demo_output=>write( |Başka bir dil bilmyorum| ).
*
*ENDIF.






"case

*CASE gv_langu.
*  WHEN 'E'.
*    cl_demo_output=>write( |Merhaba Dünya| ).
*  WHEN 'T'.
*    cl_demo_output=>write( |Hello World| ).
*  WHEN OTHERS.
*    cl_demo_output=>write( |Başka bir dil bilmyorum| ).
*
*ENDCASE.


DATA: lv_number1 TYPE i VALUE 10,
      lv_number2 TYPE i VALUE 5.

      DATA(lv_toplama) = lv_number1 + lv_number2.
      DATA(lv_cikarma) = lv_number1 - lv_number2.
      DATA(lv_carpma) = lv_number1 * lv_number2.
      DATA(lv_bolme) = lv_number1 / lv_number2.



      cl_demo_output=>write( |{ lv_number1 } + { lv_number2 } = { lv_toplama }| ).
      cl_demo_output=>write( |{ lv_number1 } - { lv_number2 } = { lv_cikarma }| ).
      cl_demo_output=>write( |{ lv_number1 } * { lv_number2 } = { lv_carpma }| ).
      cl_demo_output=>write( |{ lv_number1 } / { lv_number2 } = { lv_bolme }| ).


lv_number2 = 0.

try.
    lv_bolme = lv_number1 / lv_number2.
  catch  cx_sy_zerodivide.
  cl_demo_output=>write( |Başka bir dil bilmyorum| ).

endtry.

      cl_demo_output=>display(  ).
