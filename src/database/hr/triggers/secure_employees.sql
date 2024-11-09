create or replace editionable trigger hr.secure_employees before
    insert or update or delete on hr.employees
begin
    secure_dml;
end secure_employees;
/


-- sqlcl_snapshot {"hash":"a16b153065143ee323d81f37220449d02749c67f","type":"TRIGGER","name":"SECURE_EMPLOYEES","schemaName":"HR","sxml":"<TRIGGER  xmlns  =\"http://xmlns.oracle.com/ku\"  version  =\"1.0\"><SCHEMA>HR</SCHEMA><NAME>SECURE_EMPLOYEES</NAME><TRIGGER_TYPE>BEFORE</TRIGGER_TYPE><DML_EVENT><EVENT_LIST><EVENT_LIST_ITEM><EVENT>INSERT</EVENT></EVENT_LIST_ITEM><EVENT_LIST_ITEM><EVENT>DELETE</EVENT></EVENT_LIST_ITEM><EVENT_LIST_ITEM><EVENT>UPDATE</EVENT></EVENT_LIST_ITEM></EVENT_LIST><SCHEMA>HR</SCHEMA><NAME>EMPLOYEES</NAME></DML_EVENT><PLSQL_BLOCK>BEGIN  secure_dml  ;END  secure_employees  ;</PLSQL_BLOCK></TRIGGER>"}