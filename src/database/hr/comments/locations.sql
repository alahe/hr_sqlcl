comment on table hr.locations is
    'Locations table that contains specific address of a specific office,
warehouse, and/or production site of a company. Does not store addresses /
locations of customers. references with the departments and countries tables. ';

comment on column hr.locations.location_id is
    'Primary key of locations table';

comment on column hr.locations.street_address is
    'Street address of an office, warehouse, or production site of a company.
Contains building number and street name';

comment on column hr.locations.postal_code is
    'Postal code of the location of an office, warehouse, or production site 
of a company. ';

comment on column hr.locations.city is
    'A not null column that shows city where an office, warehouse, or 
production site of a company is located. ';

comment on column hr.locations.state_province is
    'State or Province where an office, warehouse, or production site of a 
company is located.';

comment on column hr.locations.country_id is
    'Country where an office, warehouse, or production site of a company is
located. Foreign key to country_id column of the countries table.';


-- sqlcl_snapshot {"hash":"9467e260d74a8009f107cdede49aea903b185824","type":"COMMENT","name":"locations","schemaName":"hr"}