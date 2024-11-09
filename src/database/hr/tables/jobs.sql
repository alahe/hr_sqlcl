create table hr.jobs (
    job_id     varchar2(10 byte),
    job_title  varchar2(35 byte)
        constraint job_title_nn not null enable,
    min_salary number(6, 0),
    max_salary number(6, 0)
);

create unique index hr.job_id_pk on
    hr.jobs (
        job_id
    );

alter table hr.jobs
    add constraint job_id_pk
        primary key ( job_id )
            using index hr.job_id_pk enable;


-- sqlcl_snapshot {"hash":"9eca0cbd44610ad1e2a5662ecfe1e6c605671b22","type":"TABLE","name":"JOBS","schemaName":"HR","sxml":"<TABLE  xmlns  =\"http://xmlns.oracle.com/ku\"  version  =\"1.0\"><SCHEMA>HR</SCHEMA><NAME>JOBS</NAME><RELATIONAL_TABLE><COL_LIST><COL_LIST_ITEM><NAME>JOB_ID</NAME><DATATYPE>VARCHAR2</DATATYPE><LENGTH>10</LENGTH><COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>JOB_TITLE</NAME><DATATYPE>VARCHAR2</DATATYPE><LENGTH>35</LENGTH><COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME><NOT_NULL><NAME>JOB_TITLE_NN</NAME></NOT_NULL></COL_LIST_ITEM><COL_LIST_ITEM><NAME>MIN_SALARY</NAME><DATATYPE>NUMBER</DATATYPE><PRECISION>6</PRECISION><SCALE>0</SCALE></COL_LIST_ITEM><COL_LIST_ITEM><NAME>MAX_SALARY</NAME><DATATYPE>NUMBER</DATATYPE><PRECISION>6</PRECISION><SCALE>0</SCALE></COL_LIST_ITEM></COL_LIST><PRIMARY_KEY_CONSTRAINT_LIST><PRIMARY_KEY_CONSTRAINT_LIST_ITEM><NAME>JOB_ID_PK</NAME><COL_LIST><COL_LIST_ITEM><NAME>JOB_ID</NAME></COL_LIST_ITEM></COL_LIST><USING_INDEX></USING_INDEX></PRIMARY_KEY_CONSTRAINT_LIST_ITEM></PRIMARY_KEY_CONSTRAINT_LIST><DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION><PHYSICAL_PROPERTIES><HEAP_TABLE></HEAP_TABLE></PHYSICAL_PROPERTIES></RELATIONAL_TABLE></TABLE>"}