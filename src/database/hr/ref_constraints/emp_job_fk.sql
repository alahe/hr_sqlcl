alter table hr.employees
    add constraint emp_job_fk
        foreign key ( job_id )
            references hr.jobs ( job_id )
        enable;


-- sqlcl_snapshot {"hash":"c4d93c1d386fd7536a911d0ffe8ac4fafbe64e8a","type":"REF_CONSTRAINT","name":"EMP_JOB_FK","schemaName":"HR"}