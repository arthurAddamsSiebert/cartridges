CREATE OR REPLACE PROCEDURE gather_schema_stats
(
    estimate_percent IN NUMBER   DEFAULT dbms_stats.auto_sample_size, -- estimate valid range is: [0.000001,100]
                                                                      -- estimate AUTO_SAMPLE_SIZE: 0 auto-sample size algorithms used
                                                                      -- compute: NULL
    cascade          IN BOOLEAN  DEFAULT dbms_stats.auto_cascade,     -- TRUE/FALSE, gather statistics on the indexes as well
                                                                      -- AUTO_CASCADE: NULL, Lets Oracle decide whether to collect 
                                                                      -- statistics for indexes or not
    method_opt       IN VARCHAR2 DEFAULT 'for all columns size auto',
    options          IN VARCHAR2 DEFAULT 'gather auto',
    block_sample     IN BOOLEAN  DEFAULT false,
    degree           IN NUMBER   DEFAULT dbms_stats.auto_degree,      -- AUTO_DEGREE: 32768, Lets Oracle select the degree of parallelism 
    granularity      IN VARCHAR2 DEFAULT 'auto',
    no_invalidate    IN BOOLEAN  DEFAULT dbms_stats.auto_invalidate,  -- TRUE/FALSE, not invalidate or invalidate the dependent cursors
                                                                      -- AUTO_INVALIDATE, NULL, Lets Oracle decide when to invalidate dependent cursors
    force            IN BOOLEAN  DEFAULT false                        -- Gather statistics on objects even if they are locked
)
------------------------------------------------------------------------------------------
-- Name        : gather_schema_stats
-- History     : user             date       - desc
--             : ...
--             : tkober           12/09/2013   #18308 Adjust to better Oracle 11g defaults
-- Created     : tkober           01/01/2005   initial created
--
-- Description : This procedure gathers schema statistics for given user.
--
-- Input       : estimate_percent,... wrapped dbms_stats.gather_schema_stats params
--
-- Output      : none
-- Example     : EXEC sql_util.set_log_behaviour(sql_util.LOG_ALWAYS)
--
--               EXEC gather_schema_stats
------------------------------------------------------------------------------------------
AS

    l_estimate       VARCHAR2(30) := estimate_percent;
    l_cascade        VARCHAR2(30) := 'true';
    l_block_sample   VARCHAR2(30) := 'true';
    l_degree         VARCHAR2(30) := degree;
    l_no_invalidate  VARCHAR2(30) := 'true';
    l_force          VARCHAR2(30) := 'true';
    l_start          NUMBER;
    l_end            NUMBER;

BEGIN

    IF estimate_percent = 0     THEN l_estimate      := 'dbms_stats.auto_sample_size';  END IF;
    IF estimate_percent IS NULL THEN l_estimate      := 'compute';                      END IF;
    
    IF NOT cascade              THEN l_cascade       := 'false';                        END IF;
    IF cascade IS NULL          THEN l_cascade       := 'dbms_stats.auto_cascade';      END IF;
        
    IF degree = 32768           THEN l_degree        := 'dbms_stats.auto_degree';       END IF;
    IF degree IS NULL           THEN l_degree        := 'null (table default degree)';  END IF;

    IF NOT no_invalidate        THEN l_no_invalidate := 'false';                        END IF;
    IF no_invalidate IS NULL    THEN l_no_invalidate := 'dbms_stats.auto_invalidate';   END IF;

    IF NOT block_sample         THEN l_block_sample  := 'false';                        END IF;
    IF NOT force                THEN l_force         := 'false';                        END IF;
    
    logger.log('gather_schema_stats: started.');

    l_start := dbms_utility.get_time;

    --/*
    dbms_stats.gather_schema_stats
    (
        ownname          => user,
        estimate_percent => estimate_percent,
        cascade          => cascade,
        method_opt       => method_opt,
        options          => options,
        block_sample     => block_sample,
        degree           => degree,
        granularity      => granularity,
        no_invalidate    => no_invalidate,
        force            => force
    );
    --*/

    l_end := dbms_utility.get_time;

    logger.log('               user: '||user);
    logger.log('   estimate_percent: '||l_estimate);
    logger.log('            cascade: '||l_cascade);
    logger.log('         method_opt: '||method_opt);
    logger.log('            options: '||options);
    logger.log('       block_sample: '||l_block_sample);
    logger.log('             degree: '||l_degree);
    logger.log('        granularity: '||granularity);
    logger.log('      no_invalidate: '||l_no_invalidate);
    logger.log('              force: '||l_force);

    logger.log('gather_schema_stats: finished, elapsed time: '||(l_end-l_start)*10/1000||' sec.');

END gather_schema_stats;
/

show errors;

/*

begin 
    dbms_stats.delete_schema_stats(user); 
    -- new: AUTO
    gather_schema_stats; 
end;
/

begin 
    dbms_stats.delete_schema_stats(user);
    -- old: 5% and for all columns size 1
    gather_schema_stats(5,true,'for all columns size 1','gather',false,null,'auto',false,false); 
end;
/

--*/
