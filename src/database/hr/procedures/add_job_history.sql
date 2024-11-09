create or replace procedure hr.add_job_history (
    p_emp_id        job_history.employee_id%type,
    p_start_date    job_history.start_date%type,
    p_end_date      job_history.end_date%type,
    p_job_id        job_history.job_id%type,
    p_department_id job_history.department_id%type
) is
begin
    insert into job_history (
        employee_id,
        start_date,
        end_date,
        job_id,
        department_id
    ) values ( p_emp_id,
               p_start_date,
               p_end_date,
               p_job_id,
               p_department_id );

end add_job_history;
/


-- sqlcl_snapshot {"hash":"e13539cf0f9991c11d9d61498435cdcf3028e1b5","type":"PROCEDURE","name":"ADD_JOB_HISTORY","schemaName":"HR"}