--
-- CatalogCategoryHierarchyView without any UNSPSC or ECLASS catalog category domains.
--

EXEC ddl.drop_table('CATALOGCATEGORYHIERARCHYVIEW');

CREATE OR REPLACE VIEW catalogcategoryhierarchyview AS
SELECT domainname                                      AS domainname,
       LEVEL                                           AS h_level,
       LPAD (' ', 2 * (LEVEL - 1))||(NAME)             AS cc_name,
       SYS_CONNECT_BY_PATH(REPLACE(name,'\',' '), '\') AS h_path
  FROM catalogcategory cc JOIN domaininformation di ON (di.domainid = cc.domainid)
 WHERE NOT EXISTS (SELECT 1
                     FROM domaininformation di
                    WHERE di.domainid = cc.domainid
                      AND (UPPER(di.domainname) LIKE '%UNSPSC%' OR
                           UPPER(di.domainname) LIKE '%ECLASS%')
                  )
START WITH parentcategoryid IS NULL
CONNECT BY PRIOR uuid = parentcategoryid
ORDER SIBLINGS BY domainname, name
/


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
