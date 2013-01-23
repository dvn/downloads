Welcome to the DVN app version 2.2.4

One important new feature in this release is a new, and much improved,
installation procedure. We now supply an automated installer that
takes care of most of the installation and configuration
process. Please consult the new Installers Guide at
http://projects.iq.harvard.edu/thedatanew_guides/book/installers-guides.
The installer package (dvninstall_v2_2_4.zip) can be found in this
download directory
(https://sourceforge.net/projects/dvn/files/dvn/2.2.4/).

(Please note that the referenceData*.sql and config_*.zip archive are
no longer provided as standalone files; it is all part of the single
installer package now)
 
As always, if you have any questions and/or run into problems, please
contact us at dvn_support@help.hmdc.harvard.edu.

If you are upgrading an existing DVN v. 2.2.3 installation, the
procedure is still the same: 

1. Download the EAR file and the SQL database update script
(DVN-EAR_v2_2_4.ear and buildupdate_v2_2_3_v2_2_4.sql).

2. Deploy the EAR file.

3. Run the database update script. For the database update we
recommend using pgAdmin GUI. You may also run the script on the
command line using the psql utility (as root):

su postgres
psql -d <YOUR DATABASE NAME> -f buildupdate_v2_2_3_v2_2_4.sql
