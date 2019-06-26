BEGIN
    UPDATE application a
    SET
        a.defaultcurrency = (SELECT ap.stringvalue FROM applicationpreference ap WHERE ap.applicationuuid = a.uuid AND ap.preferencename = 'DefaultCurrency'),
        a.defaultlocale = (SELECT ap.stringvalue FROM applicationpreference ap WHERE ap.applicationuuid = a.uuid AND ap.preferencename = 'DefaultLocale')
    WHERE
        a.defaultcurrency is null AND a.defaultlocale is null;
    
    DELETE FROM
        applicationpreference ap
    WHERE
        ap.preferencename = 'DefaultCurrency' OR
        ap.preferencename = 'DefaultLocale';
END;
/