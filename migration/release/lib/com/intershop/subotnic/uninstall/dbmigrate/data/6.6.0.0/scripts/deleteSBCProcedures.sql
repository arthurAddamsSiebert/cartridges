/*
    File: DeleteSBCProcedures.sql

	Removes stored procedures of sbc cartridge.
*/

EXECUTE ddl.drop_procedure('sp_deleteContentByDomain');
EXECUTE ddl.drop_procedure('sp_deleteContentLabelByDomain');
EXECUTE ddl.drop_procedure('sp_deleteDynTemplateByDomain');
EXECUTE ddl.drop_procedure('sp_deleteKeywordByDomain');
EXECUTE ddl.drop_procedure('sp_deleteLibraryByDomain');
EXECUTE ddl.drop_procedure('sp_deleteLinkByDomain');
EXECUTE ddl.drop_procedure('sp_deletePublicationByDomain');
EXECUTE ddl.drop_procedure('sp_deleteStyleByDomain');
EXECUTE ddl.drop_procedure('sp_deleteSyndicationByDomain');
EXECUTE ddl.drop_procedure('sp_deleteTemplateByDomain');
EXECUTE ddl.drop_procedure('sp_deleteTypeByDomain');
EXECUTE ddl.drop_procedure('sp_deleteVersionByDomain');

EXIT
