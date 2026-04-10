CLASS lhc_LeaseContract DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    " This method is required because we defined 'authorization master ( instance )'
    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR LeaseContract RESULT result.
ENDCLASS.

CLASS lhc_LeaseContract IMPLEMENTATION.
  METHOD get_instance_authorizations.
    " We are leaving this blank for now.
    " This means the system will bypass custom authorization checks and allow you to test.
  ENDMETHOD.
ENDCLASS.
