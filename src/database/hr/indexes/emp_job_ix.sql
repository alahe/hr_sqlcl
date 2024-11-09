create index hr.emp_job_ix on
    hr.employees (
        job_id
    );


-- sqlcl_snapshot {"hash":"2aa14bb0350033234ae5a1186bb4b3062a33a41d","type":"INDEX","name":"EMP_JOB_IX","schemaName":"HR","sxml":"<INDEX  xmlns  =\"http://xmlns.oracle.com/ku\"  version  =\"1.0\"><SCHEMA>HR</SCHEMA><NAME>EMP_JOB_IX</NAME><TABLE_INDEX><ON_TABLE><SCHEMA>HR</SCHEMA><NAME>EMPLOYEES</NAME></ON_TABLE><COL_LIST><COL_LIST_ITEM><NAME>JOB_ID</NAME></COL_LIST_ITEM></COL_LIST></TABLE_INDEX></INDEX>"}