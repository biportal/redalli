
-- SAP BW/4HANA 2.0: Create schema POS
-- Script for creating POS (Point-of-Sale) transactions
-- ============================================================
--     by Thorsten Luedtke, BIPortal GmbH, Hamburg, Germany
--                  www.bi-portal.com
--          many thanks to Mikkel Bojsen-Møller
-- ================== instructions =======================
-- The user ADMINISTRATOR is created and configured on pages 229ff. 
-- ADMINISTRATOR should be the owner of the POS schema as SYSTEM cannot grant privileges 
-- to itself und thus might lead to issues later. 
-- Open the SQL console as ADMINISTRATOR
create schema POS; -- the owner will be administrator
-- Next, run the create.sql files from the download directory as user administrator.	
-- The users REFDEV01 and DEVELOPER are created on page 237.
grant select on SCHEMA pos to DEVELOPER; -- the user with role redalli_developer
grant select on SCHEMA pos to SAPHANADB; -- the A4H user
grant select, execute on SCHEMA pos TO _sys_repo WITH GRANT OPTION;
-- Open the SQL console as user REFDEV01	
grant select, insert, update, delete, execute on SCHEMA REFDEV01 TO _SYS_REPO WITH GRANT OPTION; 
-- Open the SQL console as SYSTEM (A4H tenant) user 	
grant select on SCHEMA _SYS_BIC to SAPHANADB; 

-- Now, execute the following command to import the data using the control file: 
IMPORT FROM CONTROL FILE '/<file_path>/data.ctl';
-- for each dimension. For trouble shooting see 
-- https://help.sap.com/viewer/4fe29514fd584807ac9f2a04f6754767/2.0.03/en-US/20f712e175191014907393741fadcb97.html

