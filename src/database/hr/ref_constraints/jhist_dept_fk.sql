alter table hr.job_history
    add constraint jhist_dept_fk
        foreign key ( department_id )
            references hr.departments ( department_id )
        enable;


-- sqlcl_snapshot {"hash":"f3ee873b4ad74057eba2bc5c59460a0e4dc7228a","type":"REF_CONSTRAINT","name":"JHIST_DEPT_FK","schemaName":"HR"}