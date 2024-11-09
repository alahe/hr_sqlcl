alter table hr.employees
    add constraint emp_manager_fk
        foreign key ( manager_id )
            references hr.employees ( employee_id )
        enable;


-- sqlcl_snapshot {"hash":"928e5ee3427b888c684d7b99a2339e90063c17e8","type":"REF_CONSTRAINT","name":"EMP_MANAGER_FK","schemaName":"HR"}