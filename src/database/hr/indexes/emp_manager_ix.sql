create index hr.emp_manager_ix on
    hr.employees (
        manager_id
    );


-- sqlcl_snapshot {"hash":"8b8db154cd40bdeb9969418ce8d5ec110bb1171b","type":"INDEX","name":"EMP_MANAGER_IX","schemaName":"HR","sxml":"<INDEX  xmlns  =\"http://xmlns.oracle.com/ku\"  version  =\"1.0\"><SCHEMA>HR</SCHEMA><NAME>EMP_MANAGER_IX</NAME><TABLE_INDEX><ON_TABLE><SCHEMA>HR</SCHEMA><NAME>EMPLOYEES</NAME></ON_TABLE><COL_LIST><COL_LIST_ITEM><NAME>MANAGER_ID</NAME></COL_LIST_ITEM></COL_LIST></TABLE_INDEX></INDEX>"}