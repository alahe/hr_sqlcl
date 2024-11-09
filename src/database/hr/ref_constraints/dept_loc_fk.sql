alter table hr.departments
    add constraint dept_loc_fk
        foreign key ( location_id )
            references hr.locations ( location_id )
        enable;


-- sqlcl_snapshot {"hash":"f564911399a4613ebbbfae9dbeab3dec20f0aaad","type":"REF_CONSTRAINT","name":"DEPT_LOC_FK","schemaName":"HR"}