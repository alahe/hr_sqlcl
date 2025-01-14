create table hr.databasechangelog (
    id            varchar2(255 byte) not null enable,
    author        varchar2(255 byte) not null enable,
    filename      varchar2(255 byte) not null enable,
    dateexecuted  timestamp(6) not null enable,
    orderexecuted number(*, 0) not null enable,
    exectype      varchar2(10 byte) not null enable,
    md5sum        varchar2(35 byte),
    description   varchar2(255 byte),
    comments      varchar2(255 byte),
    tag           varchar2(255 byte),
    liquibase     varchar2(20 byte),
    contexts      varchar2(255 byte),
    labels        varchar2(255 byte),
    deployment_id varchar2(10 byte)
);


-- sqlcl_snapshot {"hash":"ae2c8672d485641b567d3abc1c60ef1205db967e","type":"TABLE","name":"DATABASECHANGELOG","schemaName":"HR","sxml":"<TABLE  xmlns  =\"http://xmlns.oracle.com/ku\"  version  =\"1.0\"><SCHEMA>HR</SCHEMA><NAME>DATABASECHANGELOG</NAME><RELATIONAL_TABLE><COL_LIST><COL_LIST_ITEM><NAME>ID</NAME><DATATYPE>VARCHAR2</DATATYPE><LENGTH>255</LENGTH><COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME><NOT_NULL></NOT_NULL></COL_LIST_ITEM><COL_LIST_ITEM><NAME>AUTHOR</NAME><DATATYPE>VARCHAR2</DATATYPE><LENGTH>255</LENGTH><COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME><NOT_NULL></NOT_NULL></COL_LIST_ITEM><COL_LIST_ITEM><NAME>FILENAME</NAME><DATATYPE>VARCHAR2</DATATYPE><LENGTH>255</LENGTH><COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME><NOT_NULL></NOT_NULL></COL_LIST_ITEM><COL_LIST_ITEM><NAME>DATEEXECUTED</NAME><DATATYPE>TIMESTAMP</DATATYPE><SCALE>6</SCALE><NOT_NULL></NOT_NULL></COL_LIST_ITEM><COL_LIST_ITEM><NAME>ORDEREXECUTED</NAME><DATATYPE>NUMBER</DATATYPE><SCALE>0</SCALE><NOT_NULL></NOT_NULL></COL_LIST_ITEM><COL_LIST_ITEM><NAME>EXECTYPE</NAME><DATATYPE>VARCHAR2</DATATYPE><LENGTH>10</LENGTH><COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME><NOT_NULL></NOT_NULL></COL_LIST_ITEM><COL_LIST_ITEM><NAME>MD5SUM</NAME><DATATYPE>VARCHAR2</DATATYPE><LENGTH>35</LENGTH><COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>DESCRIPTION</NAME><DATATYPE>VARCHAR2</DATATYPE><LENGTH>255</LENGTH><COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>COMMENTS</NAME><DATATYPE>VARCHAR2</DATATYPE><LENGTH>255</LENGTH><COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>TAG</NAME><DATATYPE>VARCHAR2</DATATYPE><LENGTH>255</LENGTH><COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>LIQUIBASE</NAME><DATATYPE>VARCHAR2</DATATYPE><LENGTH>20</LENGTH><COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>CONTEXTS</NAME><DATATYPE>VARCHAR2</DATATYPE><LENGTH>255</LENGTH><COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>LABELS</NAME><DATATYPE>VARCHAR2</DATATYPE><LENGTH>255</LENGTH><COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>DEPLOYMENT_ID</NAME><DATATYPE>VARCHAR2</DATATYPE><LENGTH>10</LENGTH><COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME></COL_LIST_ITEM></COL_LIST><DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION><PHYSICAL_PROPERTIES><HEAP_TABLE></HEAP_TABLE></PHYSICAL_PROPERTIES></RELATIONAL_TABLE></TABLE>"}