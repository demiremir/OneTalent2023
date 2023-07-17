*&---------------------------------------------------------------------*
*& Report zot_13_p_internal_tables
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_13_p_internal_tables.

SELECT matnr,
       maktx,
       matkl,
       menge,
       meins
   FROM zot_00_t_materia
   INTO TABLE @DATA(lt_materia).

DATA lt_materia2 TYPE TABLE OF zot_00_t_materia.


lt_materia2 = VALUE #( ( matnr = '11'
                         maktx = 'Kalem'
                         matkl = 'C'
                         menge = 5
                         meins = 'ST' )
                       ( matnr = '12'
                         maktx = 'Silgi'
                         matkl = 'C'
                         menge = 5
                         meins = 'ST' )
                       ( matnr = '13'
                         maktx = 'Defter'
                         matkl = 'C'
                         menge = 6
                         meins = 'ST' )
                       ( matnr = '14'
                         maktx = 'Abaküs'
                         matkl = 'C'
                         menge = 5
                         meins = 'ST' )
                       ( matnr = '15'
                         maktx = 'Tebeşir'
                         matkl = 'C'
                         menge = 5
                         meins = 'ST' ) ).



cl_demo_output=>display( lt_materia ).
