create or replace editionable trigger hr.databasechangelog_actions_trg before
    insert on hr.databasechangelog_actions
    for each row
declare
    new_seq number;
begin
    select
        nvl(
            max(sequence + 1),
            0
        )
    into new_seq
    from
        hr.databasechangelog_actions
    where
            id = :new.id
        and author = :new.author
        and filename = :new.filename;

    :new.sequence := new_seq;
end;
/


-- sqlcl_snapshot {"hash":"9a33060f3e60d03c671bcaedc932cf4f4a58d38b","type":"TRIGGER","name":"DATABASECHANGELOG_ACTIONS_TRG","schemaName":"HR","sxml":"<TRIGGER  xmlns  =\"http://xmlns.oracle.com/ku\"  version  =\"1.0\"><SCHEMA>HR</SCHEMA><NAME>DATABASECHANGELOG_ACTIONS_TRG</NAME><TRIGGER_TYPE>BEFORE</TRIGGER_TYPE><DML_EVENT><EVENT_LIST><EVENT_LIST_ITEM><EVENT>INSERT</EVENT></EVENT_LIST_ITEM></EVENT_LIST><SCHEMA>HR</SCHEMA><NAME>DATABASECHANGELOG_ACTIONS</NAME><REFERENCING><FOR_EACH_ROW></FOR_EACH_ROW></REFERENCING></DML_EVENT><PLSQL_BLOCK>DECLARE  new_seq  NUMBER  ;BEGIN  SELECT  nvl  (MAX  (sequence  +1  ),0  )INTO  new_seq  FROM  HR  .DATABASECHANGELOG_ACTIONS  WHERE  id  =:new  .id  AND  author  =:new  .author  AND  filename  =:new  .filename  ;:new  .sequence  :=new_seq  ;END  ;</PLSQL_BLOCK></TRIGGER>"}