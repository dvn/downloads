Welcome to the DVN app version 2.2.2

If this is a new install of the DVN:

Please *DO NOT* install this version! 
We strongly recommend that you install the latest release currently available. 
 

If you are upgrading an existing DVN v. 2.1.2 installation:

1. Download the EAR file, the SQL database update scripts and the 
configuration file bundle.
(DVN-EAR_v2_2_2.ear, buildupdate_v2_1_2_v2_2.sql, 
buildupdate_v2_2_v2_2.1.sql and config_v2_2_2.zip).

2. Unzip config_v2_2_2.zip and put its contents into your 
<DOMAIN_DIRECTORY>/config directory. (But do make sure you are 
not overwriting any custom changes you may have made on your system!)

2. Deploy the EAR file.

3. Run the database update scripts. Note that there are 2 update 
scripts for this release! For the database update we
recommend using pgAdmin GUI. You may also run the script on the
command line using the psql utility (as root):

su postgres
psql -d <YOUR DATABASE NAME> -f buildupdate_v2_1_2_v2_2.sql
psql -d <YOUR DATABASE NAME> -f buildupdate_v2_2_v2_2_1.sql



As always, if you have any questions and/or run into problems, please
contact us at dvn_support@help.hmdc.harvard.edu.
