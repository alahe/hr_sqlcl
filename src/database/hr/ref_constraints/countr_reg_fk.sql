alter table hr.countries
    add constraint countr_reg_fk
        foreign key ( region_id )
            references hr.regions ( region_id )
        enable;


-- sqlcl_snapshot {"hash":"b31e5dc3c0a9849eb71327eff5457149df8bbd0a","type":"REF_CONSTRAINT","name":"COUNTR_REG_FK","schemaName":"HR"}