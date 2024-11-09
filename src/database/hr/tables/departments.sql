create table hr.departments (
    department_id   number(4, 0),
    department_name varchar2(30 byte)
        constraint dept_name_nn not null enable,
    manager_id      number(6, 0),
    location_id     number(4, 0)
);

create unique index hr.dept_id_pk on
    hr.departments (
        department_id
    );

alter table hr.departments
    add constraint dept_id_pk
        primary key ( department_id )
            using index hr.dept_id_pk enable;


-- sqlcl_snapshot {"hash":"e0d6542c2d3419ec075b9291ff659e4ecf8f3222","type":"TABLE","name":"DEPARTMENTS","schemaName":"HR","sxml":"<TABLE  xmlns  =\"http://xmlns.oracle.com/ku\"  version  =\"1.0\"><SCHEMA>HR</SCHEMA><NAME>DEPARTMENTS</NAME><RELATIONAL_TABLE><COL_LIST><COL_LIST_ITEM><NAME>DEPARTMENT_ID</NAME><DATATYPE>NUMBER</DATATYPE><PRECISION>4</PRECISION><SCALE>0</SCALE></COL_LIST_ITEM><COL_LIST_ITEM><NAME>DEPARTMENT_NAME</NAME><DATATYPE>VARCHAR2</DATATYPE><LENGTH>30</LENGTH><COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME><NOT_NULL><NAME>DEPT_NAME_NN</NAME></NOT_NULL></COL_LIST_ITEM><COL_LIST_ITEM><NAME>MANAGER_ID</NAME><DATATYPE>NUMBER</DATATYPE><PRECISION>6</PRECISION><SCALE>0</SCALE></COL_LIST_ITEM><COL_LIST_ITEM><NAME>LOCATION_ID</NAME><DATATYPE>NUMBER</DATATYPE><PRECISION>4</PRECISION><SCALE>0</SCALE></COL_LIST_ITEM></COL_LIST><PRIMARY_KEY_CONSTRAINT_LIST><PRIMARY_KEY_CONSTRAINT_LIST_ITEM><NAME>DEPT_ID_PK</NAME><COL_LIST><COL_LIST_ITEM><NAME>DEPARTMENT_ID</NAME></COL_LIST_ITEM></COL_LIST><USING_INDEX></USING_INDEX></PRIMARY_KEY_CONSTRAINT_LIST_ITEM></PRIMARY_KEY_CONSTRAINT_LIST><DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION><PHYSICAL_PROPERTIES><HEAP_TABLE></HEAP_TABLE></PHYSICAL_PROPERTIES></RELATIONAL_TABLE></TABLE>"}