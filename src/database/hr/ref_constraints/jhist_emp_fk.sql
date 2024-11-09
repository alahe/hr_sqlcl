alter table hr.job_history
    add constraint jhist_emp_fk
        foreign key ( employee_id )
            references hr.employees ( employee_id )
        enable;


-- sqlcl_snapshot {"hash":"81b45b20060460a6eecd896c14dfdd39dad1bb59","type":"REF_CONSTRAINT","name":"JHIST_EMP_FK","schemaName":"HR"}