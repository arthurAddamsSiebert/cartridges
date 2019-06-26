--
-- CatalogCategoryHierarchyView without any UNSPSC or ECLASS catalog category domains.

EXEC ddl$drop_view 'CATALOGCATEGORYHIERARCHYVIEW'

CREATE OR ALTER VIEW catalogcategoryhierarchyview AS
WITH CTE (domainname, h_level, cc_name, h_path, uuid)
AS
(
	SELECT di.domainname AS domainname,
		   1 AS h_level,
		   cast(cc.name as varchar(max)) AS cc_name,
           cast(concat('\', name) as varchar(max)) AS h_path,
		   cc.uuid
	FROM catalogcategory cc JOIN domaininformation di ON (di.domainid = cc.domainid)
	WHERE cc.PARENTCATEGORYID Is NULL
	  and NOT EXISTS (SELECT 1
                     FROM domaininformation di
                    WHERE di.domainid = cc.domainid
                      AND (UPPER(di.domainname) LIKE '%UNSPSC%' OR
                           UPPER(di.domainname) LIKE '%ECLASS%'))
	UNION ALL
	SELECT di.domainname AS domainname,
		   h_level+1 AS h_level,
		   cast(concat(RIGHT(REPLICATE(' ', 2 * h_level) + LEFT(' ', 2 * h_level), 2 * h_level), cc.name) as varchar(max)) AS cc_name,
           cast(concat(h_path,'\', cc.name) as varchar(max)) AS h_path,
		   cc.uuid
	FROM catalogcategory cc JOIN domaininformation di ON (di.domainid = cc.domainid)
	     JOIN CTE ON (cc.PARENTCATEGORYID = CTE.uuid)
	WHERE NOT EXISTS (SELECT 1
                     FROM domaininformation di
                    WHERE di.domainid = cc.domainid
                      AND (UPPER(di.domainname) LIKE '%UNSPSC%' OR
                           UPPER(di.domainname) LIKE '%ECLASS%'))
)
select domainname, h_level, cc_name, h_path from cte

GO


/*

-- SQL*Plus example for domain "PrimeTech-PrimeTechSpecials-Computers"

COL domainname  FORMAT A50
COL cc_name     FORMAT A50
COL h_path      FORMAT A200

SELECT *
  FROM catalogcategoryhierarchyview
 WHERE domainname LIKE 'PrimeTech%Computers%'
/

DOMAINNAME              H_LEVEL CC_NAME                 H_PATH
----------------------- ------- ----------------------- ----------------------------------------------------------
PrimeTech-...-Computers  1      Computers               \Computers
PrimeTech-...-Computers  2        Monitors              \Computers\Monitors
PrimeTech-...-Computers  3          CRTMonitors         \Computers\Monitors\CRTMonitors
PrimeTech-...-Computers  2        Network               \Computers\Network
PrimeTech-...-Computers  3          Hubs & Switches     \Computers\Network\Hubs & Switches
PrimeTech-...-Computers  2        NotebookAccessories   \Computers\NotebookAccessories
PrimeTech-...-Computers  3          AkkusPowerPacks     \Computers\NotebookAccessories \AkkusPowerPacks
PrimeTech-...-Computers  3          Bags                \Computers\NotebookAccessories \Bags
PrimeTech-...-Computers  2        Notebooks             \Computers\Notebooks
PrimeTech-...-Computers  2        PC-Accessories        \Computers\PC-Accessories
PrimeTech-...-Computers  3          Cases               \Computers\PC-Accessories\Cases
PrimeTech-...-Computers  3          Extensions          \Computers\PC-Accessories\Extensions
PrimeTech-...-Computers  4            Graphic Cards     \Computers\PC-Accessories\Extensions\Graphic Cards
PrimeTech-...-Computers  4            HardDisks         \Computers\PC-Accessories\Extensions\HardDisks
PrimeTech-...-Computers  5              Over 300 GB     \Computers\PC-Accessories\Extensions\HardDisks\Over 300 GB
PrimeTech-...-Computers  5              To 300 GB       \Computers\PC-Accessories\Extensions\HardDisks\To 300 GB
...

*/
