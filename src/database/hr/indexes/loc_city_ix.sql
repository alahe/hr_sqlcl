create index hr.loc_city_ix on
    hr.locations (
        city
    );


-- sqlcl_snapshot {"hash":"fd2e85c692a6b673105837a19ede3a178fa557ed","type":"INDEX","name":"LOC_CITY_IX","schemaName":"HR","sxml":"<INDEX  xmlns  =\"http://xmlns.oracle.com/ku\"  version  =\"1.0\"><SCHEMA>HR</SCHEMA><NAME>LOC_CITY_IX</NAME><TABLE_INDEX><ON_TABLE><SCHEMA>HR</SCHEMA><NAME>LOCATIONS</NAME></ON_TABLE><COL_LIST><COL_LIST_ITEM><NAME>CITY</NAME></COL_LIST_ITEM></COL_LIST></TABLE_INDEX></INDEX>"}