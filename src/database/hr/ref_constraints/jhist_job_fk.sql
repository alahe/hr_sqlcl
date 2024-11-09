alter table hr.job_history
    add constraint jhist_job_fk
        foreign key ( job_id )
            references hr.jobs ( job_id )
        enable;


-- sqlcl_snapshot {"hash":"b552943a365def0bd5cb89a941fc491709b0fda8","type":"REF_CONSTRAINT","name":"JHIST_JOB_FK","schemaName":"HR"}