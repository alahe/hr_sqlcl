create index hr.loc_country_ix on
    hr.locations (
        country_id
    );


-- sqlcl_snapshot {"hash":"83934f473c70995be71007ea0fbab55ce2b33e07","type":"INDEX","name":"LOC_COUNTRY_IX","schemaName":"HR","sxml":"<INDEX  xmlns  =\"http://xmlns.oracle.com/ku\"  version  =\"1.0\"><SCHEMA>HR</SCHEMA><NAME>LOC_COUNTRY_IX</NAME><TABLE_INDEX><ON_TABLE><SCHEMA>HR</SCHEMA><NAME>LOCATIONS</NAME></ON_TABLE><COL_LIST><COL_LIST_ITEM><NAME>COUNTRY_ID</NAME></COL_LIST_ITEM></COL_LIST></TABLE_INDEX></INDEX>"}