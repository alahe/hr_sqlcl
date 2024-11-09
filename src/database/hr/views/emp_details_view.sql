create or replace force editionable view hr.emp_details_view (
    employee_id,
    job_id,
    manager_id,
    department_id,
    location_id,
    country_id,
    first_name,
    last_name,
    salary,
    commission_pct,
    department_name,
    job_title,
    city,
    state_province,
    country_name,
    region_name
) as
    select
        e.employee_id,
        e.job_id,
        e.manager_id,
        e.department_id,
        d.location_id,
        l.country_id,
        e.first_name,
        e.last_name,
        e.salary,
        e.commission_pct,
        d.department_name,
        j.job_title,
        l.city,
        l.state_province,
        c.country_name,
        r.region_name
    from
        employees   e,
        departments d,
        jobs        j,
        locations   l,
        countries   c,
        regions     r
    where
            e.department_id = d.department_id
        and d.location_id = l.location_id
        and l.country_id = c.country_id
        and c.region_id = r.region_id
        and j.job_id = e.job_id
with read only;


-- sqlcl_snapshot {"hash":"acdec39b09983dc6e26f3b4624b9a1792c84e94e","type":"VIEW","name":"EMP_DETAILS_VIEW","schemaName":"HR","sxml":"<VIEW  xmlns  =\"http://xmlns.oracle.com/ku\"  version  =\"1.0\"><SCHEMA>HR</SCHEMA><NAME>EMP_DETAILS_VIEW</NAME><DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION><COL_LIST><COL_LIST_ITEM><NAME>EMPLOYEE_ID</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>JOB_ID</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>MANAGER_ID</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>DEPARTMENT_ID</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>LOCATION_ID</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>COUNTRY_ID</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>FIRST_NAME</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>LAST_NAME</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>SALARY</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>COMMISSION_PCT</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>DEPARTMENT_NAME</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>JOB_TITLE</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>CITY</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>STATE_PROVINCE</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>COUNTRY_NAME</NAME></COL_LIST_ITEM><COL_LIST_ITEM><NAME>REGION_NAME</NAME></COL_LIST_ITEM></COL_LIST><SUBQUERY>SELECT  e  .employee_id  ,e  .job_id  ,e  .manager_id  ,e  .department_id  ,d  .location_id  ,l  .country_id  ,e  .first_name  ,e  .last_name  ,e  .salary  ,e  .commission_pct  ,d  .department_name  ,j  .job_title  ,l  .city  ,l  .state_province  ,c  .country_name  ,r  .region_name  FROM  employees  e  ,departments  d  ,jobs  j  ,locations  l  ,countries  c  ,regions  r  WHERE  e  .department_id  =d  .department_id  AND  d  .location_id  =l  .location_id  AND  l  .country_id  =c  .country_id  AND  c  .region_id  =r  .region_id  AND  j  .job_id  =e  .job_id  WITH  READ  ONLY</SUBQUERY><RESTRICTION><READ_ONLY></READ_ONLY></RESTRICTION></VIEW>"}