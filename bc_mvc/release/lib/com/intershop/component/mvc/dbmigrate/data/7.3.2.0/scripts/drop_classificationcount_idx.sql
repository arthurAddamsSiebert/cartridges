WHENEVER SQLERROR EXIT SQL.SQLCODE

EXEC sql_util.executeDDL('alter table CLASSIFICATIONCOUNT$1 drop primary key', -2441);
EXEC sql_util.executeDDL('alter table CLASSIFICATIONCOUNT$2 drop primary key', -2441);
EXEC ddl.drop_index ('CLASSIFICATIONCOUNT$1_FK001');
EXEC ddl.drop_index ('CLASSIFICATIONCOUNT$1_FK002');
EXEC ddl.drop_index ('CLASSIFICATIONCOUNT$2_FK001');
EXEC ddl.drop_index ('CLASSIFICATIONCOUNT$2_FK002');
EXEC sql_util.executeDDL('alter table CLASSIFICATIONCOUNT$1 add primary key(categoryid, domainid)', -2260);
EXEC sql_util.executeDDL('alter table CLASSIFICATIONCOUNT$2 add primary key(categoryid, domainid)', -2260);

show errors;

EXIT;