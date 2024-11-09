create table hr.job_history (
    employee_id   number(6, 0)
        constraint jhist_employee_nn not null enable,
    start_date    date
        constraint jhist_start_date_nn not null enable,
    end_date      date
        constraint jhist_end_date_nn not null enable,
    job_id        varchar2(10 byte)
        constraint jhist_job_nn not null enable,
    department_id number(4, 0)
);

create unique index hr.jhist_emp_id_st_date_pk on
    hr.job_history (
        employee_id,
        start_date
    );

alter table hr.job_history add constraint jhist_date_interval check ( end_date > start_date ) enable;

alter table hr.job_history
    add constraint jhist_emp_id_st_date_pk
        primary key ( employee_id,
                      start_date )
            using index hr.jhist_emp_id_st_date_pk enable;


-- sqlcl_snapshot {"hash":"3b0e8ecb1dceab0ecf8ed7e6e49e7645dfaf8872","type":"TABLE","name":"JOB_HISTORY","schemaName":"HR","sxml":"<TABLE  xmlns  =\"http://xmlns.oracle.com/ku\"  version  =\"1.0\"><SCHEMA>HR</SCHEMA><NAME>JOB_HISTORY</NAME><RELATIONAL_TABLE><COL_LIST><COL_LIST_ITEM><NAME>EMPLOYEE_ID</NAME><DATATYPE>NUMBER</DATATYPE><PRECISION>6</PRECISION><SCALE>0</SCALE><NOT_NULL><NAME>JHIST_EMPLOYEE_NN</NAME></NOT_NULL></COL_LIST_ITEM><COL_LIST_ITEM><NAME>START_DATE</NAME><DATATYPE>DATE</DATATYPE><NOT_NULL><NAME>JHIST_START_DATE_NN</NAME></NOT_NULL></COL_LIST_ITEM><COL_LIST_ITEM><NAME>END_DATE</NAME><DATATYPE>DATE</DATATYPE><NOT_NULL><NAME>JHIST_END_DATE_NN</NAME></NOT_NULL></COL_LIST_ITEM><COL_LIST_ITEM><NAME>JOB_ID</NAME><DATATYPE>VARCHAR2</DATATYPE><LENGTH>10</LENGTH><COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME><NOT_NULL><NAME>JHIST_JOB_NN</NAME></NOT_NULL></COL_LIST_ITEM><COL_LIST_ITEM><NAME>DEPARTMENT_ID</NAME><DATATYPE>NUMBER</DATATYPE><PRECISION>4</PRECISION><SCALE>0</SCALE></COL_LIST_ITEM></COL_LIST><CHECK_CONSTRAINT_LIST><CHECK_CONSTRAINT_LIST_ITEM><NAME>JHIST_DATE_INTERVAL</NAME><CONDITION>end_date>start_date</CONDITION></CHECK_CONSTRAINT_LIST_ITEM></CHECK_CONSTRAINT_LIST><PRIMARY_KEY_CONSTRAINT_LIST><PRIMARY_KEY_CONSTRAINT_LIST_ITEM><NAME>JHIST_EMP_ID_ST_DATE_PK</NAME><COL_LIST><COL_LIST_ITEM><NAME>EMPLOYEE_ID</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>START_DATE</NAME></COL_LIST_ITEM></COL_LIST><USING_INDEX></USING_INDEX></PRIMARY_KEY_CONSTRAINT_LIST_ITEM></PRIMARY_KEY_CONSTRAINT_LIST><DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION><PHYSICAL_PROPERTIES><HEAP_TABLE></HEAP_TABLE></PHYSICAL_PROPERTIES></RELATIONAL_TABLE></TABLE>"}