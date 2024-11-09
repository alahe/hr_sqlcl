alter table hr.departments
    add constraint dept_mgr_fk
        foreign key ( manager_id )
            references hr.employees ( employee_id )
        enable;


-- sqlcl_snapshot {"hash":"5df2a888dbc9e36486f81300870b636734a7796c","type":"REF_CONSTRAINT","name":"DEPT_MGR_FK","schemaName":"HR"}