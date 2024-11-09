create index hr.emp_department_ix on
    hr.employees (
        department_id
    );


-- sqlcl_snapshot {"hash":"4de473e212bcc9a5b121db77c2182118eca4f3e9","type":"INDEX","name":"EMP_DEPARTMENT_IX","schemaName":"HR","sxml":"<INDEX  xmlns  =\"http://xmlns.oracle.com/ku\"  version  =\"1.0\"><SCHEMA>HR</SCHEMA><NAME>EMP_DEPARTMENT_IX</NAME><TABLE_INDEX><ON_TABLE><SCHEMA>HR</SCHEMA><NAME>EMPLOYEES</NAME></ON_TABLE><COL_LIST><COL_LIST_ITEM><NAME>DEPARTMENT_ID</NAME></COL_LIST_ITEM></COL_LIST></TABLE_INDEX></INDEX>"}