create index hr.jhist_job_ix on
    hr.job_history (
        job_id
    );


-- sqlcl_snapshot {"hash":"1d121a761a9b420efa187ca886d1ff8f4a552412","type":"INDEX","name":"JHIST_JOB_IX","schemaName":"HR","sxml":"<INDEX  xmlns  =\"http://xmlns.oracle.com/ku\"  version  =\"1.0\"><SCHEMA>HR</SCHEMA><NAME>JHIST_JOB_IX</NAME><TABLE_INDEX><ON_TABLE><SCHEMA>HR</SCHEMA><NAME>JOB_HISTORY</NAME></ON_TABLE><COL_LIST><COL_LIST_ITEM><NAME>JOB_ID</NAME></COL_LIST_ITEM></COL_LIST></TABLE_INDEX></INDEX>"}