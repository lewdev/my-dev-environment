-------------------------------------------------------------------------------
-- How to SQL using SQLite
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Create a table
-------------------------------------------------------------------------------
--DROP TABLE test_blog;
CREATE TABLE test_blog (
  test_blog_pk INTEGER PRIMARY KEY NOT NULL,
  title varchar(255) NOT NULL,
  body BLOB,
  last_updated_by INTEGER,
  last_updated_date TIMESTAMP
  DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO test_blog (title, body, last_updated_by, last_updated_date)
VALUES ('test title', 'blah blah blah blah blah body', 24, datetime('now', 'localtime'));

UPDATE test_blog SET body = '1213 51231213541 23651423 12', last_updated_date = datetime('now', 'localtime') WHERE test_blog_pk = 1

-------------------------------------------------------------------------------
-- Add a column
-------------------------------------------------------------------------------
ALTER TABLE configured_system ADD ship_fk INTEGER;

-------------------------------------------------------------------------------
-- Remove a column
-------------------------------------------------------------------------------
-- 1. Create temp table.
-- 2. Copy old data into temp table.
-- 3. Create new table.
-- 4. Drop old table
-- 5. Copy data from temp table into new table.
BEGIN TRANSACTION;
CREATE TEMPORARY TABLE t1_backup(a,b);
INSERT INTO t1_backup SELECT a,b FROM t1;
DROP TABLE t1;
CREATE TABLE t1(a,b);
INSERT INTO t1 SELECT a,b FROM t1_backup;
DROP TABLE t1_backup;
COMMIT;

-------------------------------------------------------------------------------
-- How to do an "INSERT-SELECT"
--  * You need to list ALL columns of the table in the select.
-------------------------------------------------------------------------------
--Based on the UIC, we can set the foreign key values to the column.
INSERT OR REPLACE INTO configured_system
SELECT configured_system_pk,laptop_fk,scanner_fk,kofax_license_fk,ms_office_license_fk,ship.uic,
facet_version,facet_version_history,kofax_product_name,kofax_version,kofax_version_history,
access_version,access_version_history,documentation_version,documentation_version_history,notes,
last_updated_by,last_updated_date,ghost_version,is_prepped_ind,dummy_database_version,
network_adapter,admin_password,dms_version,s2_closure_date,fuel_closure_date,
multi_ship_ind,multi_ship_uic_list,nwcf_ind,contract_number,hardware_file_fk,
training_file_fk,laptop1_file_fk,laptop2_file_fk,post_install_file_fk,vrs_license_fk,
form_1348_no_location_ind,form_1348_no_class_ind,os_version,ship_pk AS ship_fk
FROM configured_system JOIN ship
ON ship.uic = configured_system.uic

-- another example
INSERT OR REPLACE INTO organization 
SELECT null,organization AS name,null,null,null,null,null,null,null,null,null,null,null,null,24,datetime('now', 'localtime'),24,datetime('now', 'localtime'),0
FROM poc
WHERE organization IS NOT NULL GROUP BY organization

-------------------------------------------------------------------------------
-- Concatenate
-------------------------------------------------------------------------------
SELECT '{ id: ' || id
  || ', nationalStockNumber: "' || nationalStockNumber || '"'
  || ', foodItemCode: "' || IFNULL(foodItemCode, '') || '"'
  || ', description: "' || IFNULL(description, '') || '"'
  || ', dlaPrice: ' || dlaPrice
  || ', vendorPrice: ' || vendorPrice
  || ', vendorName: "' || vendorName || '"'
  || ' },'
AS code
FROM cb_foods

-------------------------------------------------------------------------------
-- Query for Tables, Views, Indexes, Triggers
-------------------------------------------------------------------------------
SELECT type,name,tbl_name,rootpage,sql
FROM sqlite_master
WHERE type = 'table'
AND name = 'users'

-------------------------------------------------------------------------------
-- Query for Table Columns
-------------------------------------------------------------------------------
SELECT
  m.name AS table_name, 
  p.cid AS col_id,
  p.name AS col_name,
  p.type AS col_type,
  p.pk AS col_is_pk,
  p.dflt_value AS col_default_val,
  p.[notnull] AS col_is_not_null
FROM sqlite_master m
LEFT OUTER JOIN pragma_table_info((m.name)) p
  ON m.name <> p.name
WHERE m.type = 'table'
ORDER BY table_name, col_id


-------------------------------------------------------------------------------
-- Alter a column (or just re-create the table)
-------------------------------------------------------------------------------
ALTER TABLE table_name RENAME TO old_table_name;

CREATE TABLE table_name (
  table_name_pk INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  columnA VARCHAR(5) NOT NULL,
  ...
);

INSERT INTO table_name SELECT * FROM old_table_name;

DROP TABLE old_table_name;

