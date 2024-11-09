create or replace procedure hr.secure_dml is
begin
    if to_char(sysdate, 'HH24:MI') not between '08:00' and '18:00'
       or to_char(sysdate, 'DY') in ( 'SAT', 'SUN' ) then
        raise_application_error(-20205, 'You may only make changes during normal office hours');
    end if;
end secure_dml;
/


-- sqlcl_snapshot {"hash":"a0d93fdbf0c837020158273b0e6f3b09a19d4700","type":"PROCEDURE","name":"SECURE_DML","schemaName":"HR"}