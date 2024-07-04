namespace app.interactions;

using { Country } from '@sap/cds/common';
type SDate : DateTime;

entity Groups {
key ID : String;
name: String;    
teams : Association to many Teams on teams.group = $self;
last_update : SDate;
}

entity Teams {
key ID: UUID;
group : Association to Groups;
country_code : Country;
name: String;
match_played : Integer;
win: Integer;
draw : Integer;
loose: Integer;
score : Integer;
}




