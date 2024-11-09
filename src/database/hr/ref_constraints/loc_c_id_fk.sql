alter table hr.locations
    add constraint loc_c_id_fk
        foreign key ( country_id )
            references hr.countries ( country_id )
        enable;


-- sqlcl_snapshot {"hash":"91bca47c2c8734aa7924fe36d28034045d87c55c","type":"REF_CONSTRAINT","name":"LOC_C_ID_FK","schemaName":"HR"}