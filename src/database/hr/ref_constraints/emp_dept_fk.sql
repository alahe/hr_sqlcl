alter table hr.employees
    add constraint emp_dept_fk
        foreign key ( department_id )
            references hr.departments ( department_id )
        enable;


-- sqlcl_snapshot {"hash":"42c08f5243f4677fae37aa9a561cc42505f69ecd","type":"REF_CONSTRAINT","name":"EMP_DEPT_FK","schemaName":"HR"}