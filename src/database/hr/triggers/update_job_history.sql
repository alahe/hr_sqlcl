create or replace editionable trigger hr.update_job_history after
    update of job_id, department_id on hr.employees
    for each row
begin
    add_job_history(:old.employee_id,
                    :old.hire_date,
                    sysdate,
                    :old.job_id,
                    :old.department_id);
end;
/


-- sqlcl_snapshot {"hash":"5106f9a9fd7c0fabd6dbe416b7673e778bdeedf5","type":"TRIGGER","name":"UPDATE_JOB_HISTORY","schemaName":"HR","sxml":"<TRIGGER  xmlns  =\"http://xmlns.oracle.com/ku\"  version  =\"1.0\"><SCHEMA>HR</SCHEMA><NAME>UPDATE_JOB_HISTORY</NAME><TRIGGER_TYPE>AFTER</TRIGGER_TYPE><DML_EVENT><EVENT_LIST><EVENT_LIST_ITEM><EVENT>UPDATE</EVENT><COL_LIST><COL_LIST_ITEM><NAME>JOB_ID</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>DEPARTMENT_ID</NAME></COL_LIST_ITEM></COL_LIST></EVENT_LIST_ITEM></EVENT_LIST><SCHEMA>HR</SCHEMA><NAME>EMPLOYEES</NAME><REFERENCING><FOR_EACH_ROW></FOR_EACH_ROW></REFERENCING></DML_EVENT><PLSQL_BLOCK>BEGIN  add_job_history  (:old  .employee_id  ,:old  .hire_date  ,sysdate  ,:old  .job_id  ,:old  .department_id  );END  ;</PLSQL_BLOCK></TRIGGER>"}