comment on table hr.regions is
    'Regions table that contains region numbers and names. references with the Countries table.';

comment on column hr.regions.region_id is
    'Primary key of regions table.';

comment on column hr.regions.region_name is
    'Names of regions. Locations are in the countries of these regions.';


-- sqlcl_snapshot {"hash":"977409e5bbdad4e2fc37ef1422bbf13369ab1bee","type":"COMMENT","name":"regions","schemaName":"hr"}