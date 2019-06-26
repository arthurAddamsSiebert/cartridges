BEGIN
    DELETE FROM
        syncmessageresponse smr
    WHERE
        smr.oca is null;
END;
/