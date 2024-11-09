comment on table hr.countries is
    'country table. References with locations table.';

comment on column hr.countries.country_id is
    'Primary key of countries table.';

comment on column hr.countries.country_name is
    'Country name';

comment on column hr.countries.region_id is
    'Region ID for the country. Foreign key to region_id column in the departments table.';


-- sqlcl_snapshot {"hash":"5b2f6e3abda918a79bf968960e8dbc18ff43b09c","type":"COMMENT","name":"countries","schemaName":"hr"}