/*
****************************************************************
Oracle additional DDL statements to create/drop indices on
foreign, alternate, inversion entries, interMediaText(context)
and bitmap keys for Beehive.
****************************************************************
*/

/* Class com.intershop.beehive.core.internal.profile.BasicProfile */
-- Inversion Entry key indices
DROP INDEX BasicProfile_IE001;
CREATE INDEX BasicProfile_IE001 on BasicProfile (FIRSTNAME);

DROP INDEX BasicProfile_IE002;
CREATE INDEX BasicProfile_IE002 on BasicProfile (LASTNAME);

/* Class com.intershop.beehive.core.internal.profile.BasicCredentials */
-- Inversion Entry key indices
DROP INDEX BasicCredentials_IE001;
CREATE INDEX BasicCredentials_IE001 on BasicCredentials (DISABLEDFLAG);





