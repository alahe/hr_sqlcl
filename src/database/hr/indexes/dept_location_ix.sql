create index hr.dept_location_ix on
    hr.departments (
        location_id
    );


-- sqlcl_snapshot {"hash":"ab9c55f468ee0ff90321f33cdc0ccd7714722dfd","type":"INDEX","name":"DEPT_LOCATION_IX","schemaName":"HR","sxml":"<INDEX  xmlns  =\"http://xmlns.oracle.com/ku\"  version  =\"1.0\"><SCHEMA>HR</SCHEMA><NAME>DEPT_LOCATION_IX</NAME><TABLE_INDEX><ON_TABLE><SCHEMA>HR</SCHEMA><NAME>DEPARTMENTS</NAME></ON_TABLE><COL_LIST><COL_LIST_ITEM><NAME>LOCATION_ID</NAME></COL_LIST_ITEM></COL_LIST></TABLE_INDEX></INDEX>"}