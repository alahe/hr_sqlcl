create index hr.jhist_employee_ix on
    hr.job_history (
        employee_id
    );


-- sqlcl_snapshot {"hash":"1ab9ccda66f194aaf4be72bb1c9dfcef482f5d53","type":"INDEX","name":"JHIST_EMPLOYEE_IX","schemaName":"HR","sxml":"<INDEX  xmlns  =\"http://xmlns.oracle.com/ku\"  version  =\"1.0\"><SCHEMA>HR</SCHEMA><NAME>JHIST_EMPLOYEE_IX</NAME><TABLE_INDEX><ON_TABLE><SCHEMA>HR</SCHEMA><NAME>JOB_HISTORY</NAME></ON_TABLE><COL_LIST><COL_LIST_ITEM><NAME>EMPLOYEE_ID</NAME></COL_LIST_ITEM></COL_LIST></TABLE_INDEX></INDEX>"}