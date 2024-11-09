create or replace force editionable view hr.databasechangelog_details (
    deployment_id,
    id,
    author,
    filename,
    sql,
    sxml,
    dateexecuted,
    exectype,
    md5sum,
    description,
    comments,
    liquibase,
    contexts,
    labels
) as
    select
        da.deployment_id,
        da.id,
        da.author,
        da.filename,
        da.sql,
        da.sxml,
        d.dateexecuted,
        d.exectype,
        d.md5sum,
        d.description,
        d.comments,
        d.liquibase,
        d.contexts,
        d.labels
    from
        hr.databasechangelog         d
        left join hr.databasechangelog_actions da on d.id = da.id
                                                     and d.author = da.author
                                                     and d.filename = da.filename
    order by
        1,
        7;


-- sqlcl_snapshot {"hash":"1995c34efdd9c687acfd4706db0a1b60a6e070ea","type":"VIEW","name":"DATABASECHANGELOG_DETAILS","schemaName":"HR","sxml":"<VIEW  xmlns  =\"http://xmlns.oracle.com/ku\"  version  =\"1.0\"><SCHEMA>HR</SCHEMA><NAME>DATABASECHANGELOG_DETAILS</NAME><DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION><COL_LIST><COL_LIST_ITEM><NAME>DEPLOYMENT_ID</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>ID</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>AUTHOR</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>FILENAME</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>SQL</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>SXML</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>DATEEXECUTED</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>EXECTYPE</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>MD5SUM</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>DESCRIPTION</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>COMMENTS</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>LIQUIBASE</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>CONTEXTS</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>LABELS</NAME></COL_LIST_ITEM></COL_LIST><SUBQUERY>SELECT  da  .deployment_id  ,da  .id  ,da  .author  ,da  .filename  ,da  .sql  ,da  .sxml  ,d  .dateexecuted  ,d  .exectype  ,d  .md5sum  ,d  .description  ,d  .comments  ,d  .liquibase  ,d  .contexts  ,d  .labels  FROM  HR  .DATABASECHANGELOG  d  LEFT  JOIN  HR  .DATABASECHANGELOG_ACTIONS  da  ON  d  .id  =da  .id  AND  d  .author  =da  .author  AND  d  .filename  =da  .filename  ORDER  BY  1  ,7</SUBQUERY></VIEW>"}