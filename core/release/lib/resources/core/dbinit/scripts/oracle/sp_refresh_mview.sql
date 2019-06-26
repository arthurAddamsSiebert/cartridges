CREATE OR REPLACE PROCEDURE sp_refresh_mview(mview IN user_mviews.mview_name%TYPE) AS

    ----------------------------------------------------------------------------------
    -- This stored procedure is used to update the materialized view with given name.
    -- There are two views, one live and one shadow. First, it updates the shadow view
    -- and second, it switches the synonym to the shadow view.
    -- In case of shadow views and synonym do not exist, they will be automatically
    -- created.
    --
    -- example: exec sp_refresh_mview('IEPRODUCTCATEGORYASSIGNMENT')
    ----------------------------------------------------------------------------------

    aMViewName   user_mviews.mview_name%TYPE := upper(mview);
    suffix       VARCHAR2(2);
    shadowMView  user_objects.object_name%TYPE;
    currentMView user_objects.object_name%TYPE;
    obj_type     user_objects.object_type%TYPE;
    cnt          INTEGER;

    PROCEDURE duplicate_mview (srcMViewName IN VARCHAR2, dstMViewName IN VARCHAR2)
    AS
        query       user_mviews.query%TYPE;
        index_ddl   VARCHAR2(32767);

    BEGIN

        -- get the query of source materialized view
        SELECT query INTO query FROM user_mviews WHERE mview_name=srcMViewName;

        logger.log('Creating mview '||dstMViewName||'...');
        -- create the destination view
        sql_util.execute('CREATE MATERIALIZED VIEW '||dstMViewName||' REFRESH FORCE WITH PRIMARY KEY AS '||query, -12006);

        -- duplicate indexes
        FOR i IN (SELECT index_name FROM user_indexes WHERE table_name=srcMViewName) LOOP

            index_ddl := dbms_metadata.get_ddl('INDEX', i.index_name);

            index_ddl := replace(index_ddl, '"'||i.index_name||'"', '"'||staging.get_index_name(i.index_name, dstMViewName)||'"');
            index_ddl := replace(index_ddl, '"'||srcMViewName||'"', '"'||dstMViewName||'"');

            sql_util.execute(index_ddl, -1408);

        END LOOP;
        logger.log('Creating mview '||dstMViewName||'...Ok!');
    END;

BEGIN

    dbms_application_info.set_module('sp_refresh_mview: '||aMViewName, 'starting');

    SELECT object_type INTO obj_type FROM user_objects WHERE object_type IN ('MATERIALIZED VIEW', 'SYNONYM') AND object_name=aMViewName;

    IF obj_type='SYNONYM' THEN

        SELECT substr(table_name, -1) INTO suffix FROM user_synonyms WHERE synonym_name=aMViewName;

        IF suffix = '1' THEN
            shadowMView := aMViewName||'2';
        ELSE
            shadowMView := aMViewName||'1';
        END IF;
    ELSIF obj_type='MATERIALIZED VIEW' THEN
        shadowMView := aMViewName||'1';
    ELSE
        logger.log('Unsupported object type of mview '''||aMViewName||''': '||obj_type);
        RETURN;
    END IF;

    -- check shadow mview exists
    SELECT count(*) INTO cnt FROM user_mviews WHERE mview_name=shadowMView;
    IF cnt=0 THEN
        IF obj_type='SYNONYM' THEN
            SELECT table_name INTO currentMView FROM user_synonyms WHERE synonym_name=aMViewName;
        ELSE
            currentMView := aMViewName;
        END IF;
        duplicate_mview(currentMView, shadowMView);
    ELSE
        logger.log('Refreshing mview '||shadowMView||'...');
        IF sql_util.get_instance_version().major < 10 THEN
            -- use default values to force use of truncate
            logger.log('use default values of dbms_mview.refresh() method.');
            dbms_mview.refresh(shadowMView);
        ELSE
            -- use truncate instead of delete statements
            dbms_mview.refresh(shadowMView, atomic_refresh => false);
        END IF;
        logger.log('Refreshing mview '||shadowMView||'...Ok!');
    END IF;

    IF obj_type<>'SYNONYM' THEN
        sql_util.execute('DROP '||obj_type||' '||aMViewName, -1434);
    END IF;
    logger.log('Switch '||aMViewName||' to '||shadowMView||'...');
    sql_util.execute('CREATE OR REPLACE SYNONYM '||aMViewName||' FOR '||shadowMView);
    logger.log('Switch '||aMViewName||' to '||shadowMView||'...Ok!');

    dbms_application_info.set_module(null, null);

END;
/

show errors;
