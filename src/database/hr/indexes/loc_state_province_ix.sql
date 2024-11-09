create index hr.loc_state_province_ix on
    hr.locations (
        state_province
    );


-- sqlcl_snapshot {"hash":"a751270cc765db5d43f12eb800ee646f2e5f79b3","type":"INDEX","name":"LOC_STATE_PROVINCE_IX","schemaName":"HR","sxml":"<INDEX  xmlns  =\"http://xmlns.oracle.com/ku\"  version  =\"1.0\"><SCHEMA>HR</SCHEMA><NAME>LOC_STATE_PROVINCE_IX</NAME><TABLE_INDEX><ON_TABLE><SCHEMA>HR</SCHEMA><NAME>LOCATIONS</NAME></ON_TABLE><COL_LIST><COL_LIST_ITEM><NAME>STATE_PROVINCE</NAME></COL_LIST_ITEM></COL_LIST></TABLE_INDEX></INDEX>"}