namespace app.interactions;

using {Country} from '@sap/cds/common';

//context app.interactions {
        type SDate : DateTime;

        entity Groups {
                key ID          : String;
                    name        : String;
                    teams       : Association to many Teams
                                          on teams.group = $self;
                    last_update : SDate;
        };


        entity Teams {
                key ID           : UUID;
                    group        : Association to Groups;
                    country_code : Country;
                    name         : String;
                    match_played : Integer;
                    win          : Integer;
                    draw         : Integer;
                    loose        : Integer;
                    score        : Integer;
        };
//}

@cds.persistence.exists
@cds.persistence.calcview
entity V_INTERACTIONS {
        key ID                : String(5000) @title: 'ID: ID';
        key NAME              : String(5000) @title: 'NAME: NAME';
        key LAST_UPDATE       : String       @title: 'LAST_UPDATE: LAST_UPDATE';
        key COUNTRY_CODE_CODE : String(3)    @title: 'COUNTRY_CODE_CODE: COUNTRY_CODE_CODE';
        key NAME_TEAM         : String(5000) @title: 'NAME_TEAM: NAME_1';
            MATCH_PLAYED      : Integer      @title: 'MATCH_PLAYED: MATCH_PLAYED';
            WIN               : Integer      @title: 'WIN: WIN';
            DRAW              : Integer      @title: 'DRAW: DRAW';
            LOOSE             : Integer      @title: 'LOOSE: LOOSE';
            SCORE             : Integer      @title: 'SCORE: SCORE';
}
