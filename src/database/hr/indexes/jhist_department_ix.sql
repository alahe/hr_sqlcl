create index hr.jhist_department_ix on
    hr.job_history (
        department_id
    );


-- sqlcl_snapshot {"hash":"ff4b9453959737479048e7032af6f5825328d982","type":"INDEX","name":"JHIST_DEPARTMENT_IX","schemaName":"HR","sxml":"<INDEX  xmlns  =\"http://xmlns.oracle.com/ku\"  version  =\"1.0\"><SCHEMA>HR</SCHEMA><NAME>JHIST_DEPARTMENT_IX</NAME><TABLE_INDEX><ON_TABLE><SCHEMA>HR</SCHEMA><NAME>JOB_HISTORY</NAME></ON_TABLE><COL_LIST><COL_LIST_ITEM><NAME>DEPARTMENT_ID</NAME></COL_LIST_ITEM></COL_LIST></TABLE_INDEX></INDEX>"}