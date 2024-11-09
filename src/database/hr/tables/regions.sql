create table hr.regions (
    region_id   number
        constraint region_id_nn not null enable,
    region_name varchar2(25 byte)
);

create unique index hr.reg_id_pk on
    hr.regions (
        region_id
    );

alter table hr.regions
    add constraint reg_id_pk
        primary key ( region_id )
            using index hr.reg_id_pk enable;


-- sqlcl_snapshot {"hash":"bec17e13d4dd6c1d90b2caf666894e20bf8a8904","type":"TABLE","name":"REGIONS","schemaName":"HR","sxml":"<TABLE  xmlns  =\"http://xmlns.oracle.com/ku\"  version  =\"1.0\"><SCHEMA>HR</SCHEMA><NAME>REGIONS</NAME><RELATIONAL_TABLE><COL_LIST><COL_LIST_ITEM><NAME>REGION_ID</NAME><DATATYPE>NUMBER</DATATYPE><NOT_NULL><NAME>REGION_ID_NN</NAME></NOT_NULL></COL_LIST_ITEM><COL_LIST_ITEM><NAME>REGION_NAME</NAME><DATATYPE>VARCHAR2</DATATYPE><LENGTH>25</LENGTH><COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME></COL_LIST_ITEM></COL_LIST><PRIMARY_KEY_CONSTRAINT_LIST><PRIMARY_KEY_CONSTRAINT_LIST_ITEM><NAME>REG_ID_PK</NAME><COL_LIST><COL_LIST_ITEM><NAME>REGION_ID</NAME></COL_LIST_ITEM></COL_LIST><USING_INDEX></USING_INDEX></PRIMARY_KEY_CONSTRAINT_LIST_ITEM></PRIMARY_KEY_CONSTRAINT_LIST><DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION><PHYSICAL_PROPERTIES><HEAP_TABLE></HEAP_TABLE></PHYSICAL_PROPERTIES></RELATIONAL_TABLE></TABLE>"}