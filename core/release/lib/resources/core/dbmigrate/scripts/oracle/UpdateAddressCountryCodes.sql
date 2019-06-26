-- This script will update the country codes for those addresses
-- which contain country name but no country code.
-- Country names will not be lost for backward compatibility.

declare
    v_cnt number;
begin
    select count(*) into v_cnt from user_tab_columns where column_name = 'COUNTRY' and table_name = 'BASICADDRESS';
    if v_cnt > 0 then

        staging.update_table('BASICADDRESS',
            'SET countrycode =
            (
              SELECT c.id FROM COUNTRY C
              INNER JOIN COUNTRY_AV C_AV
              ON
              (
                c.uuid = c_av.ownerid AND
                c_av.name=''displayName''
              )
              where c_av.stringvalue = country and
              rownum < 2
            )
            WHERE
            country IS NOT NULL
            AND countrycode IS NULL');

        commit;
    end if;
end;
/

-- The same for the static addresses.
declare
    v_cnt number;
begin
    select count(*) into v_cnt from user_tab_columns where column_name = 'COUNTRY' and table_name = 'STATICADDRESS';
    if v_cnt > 0 then

        staging.update_table('STATICADDRESS',
        'SET countrycode =
        (
          SELECT c.id FROM COUNTRY C
          INNER JOIN COUNTRY_AV C_AV
          ON
          (
            c.uuid = c_av.ownerid AND
            c_av.name=''displayName''
          )
          where c_av.stringvalue = country and
          rownum < 2
        )
        WHERE
        country IS NOT NULL
        AND countrycode IS NULL');

        commit;
    end if;
end;
/

