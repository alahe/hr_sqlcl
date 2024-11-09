create index hr.emp_name_ix on
    hr.employees (
        last_name,
        first_name
    );


-- sqlcl_snapshot {"hash":"2c299defb775171bee109d70e1bad81d095c0569","type":"INDEX","name":"EMP_NAME_IX","schemaName":"HR","sxml":"<INDEX  xmlns  =\"http://xmlns.oracle.com/ku\"  version  =\"1.0\"><SCHEMA>HR</SCHEMA><NAME>EMP_NAME_IX</NAME><TABLE_INDEX><ON_TABLE><SCHEMA>HR</SCHEMA><NAME>EMPLOYEES</NAME></ON_TABLE><COL_LIST><COL_LIST_ITEM><NAME>LAST_NAME</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>FIRST_NAME</NAME></COL_LIST_ITEM></COL_LIST></TABLE_INDEX></INDEX>"}