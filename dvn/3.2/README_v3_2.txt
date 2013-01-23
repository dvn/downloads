Welcome to the DVN application version 3.2!
==============================================================

For a list and description of new features in this release, please consult 

http://thedata.org/pages/latest-release

One fun new addition in 3.2 is Automatic Tweeting feature. Your DVN can now use 
Twitter to announce new releases of studies and Dataverses. See the Twitter Setup 
section of the Installers Guide (http://guides.thedata.org/book/4e-twitter-setup) 
for more details.

Installing the DVN.
================== 

If this is a new installation:
-----------------------------

A scripted installer is provided. Please consult the Installers Guide at

http://projects.iq.harvard.edu/thedatanew_guides/book/installers-guides.

The installer package itself can be found here:

https://sourceforge.net/projects/dvn/files/dvn/3.1/dvninstall_v3_2.zip.

If you are upgrading an existing DVN v3.1 installation:
---------------------------------------------------------

1. Download the .war file and the SQL database update script
(DVN-web_v3_2.war and buildupdate_v3_1_v3_2.sql). 

2. Deploy the application .war file. 

3. Run the database update script. For the database update
we recommend using pgAdmin application. 

You may also run the script on the command line using the psql utility
(as root): 
su - postgres 
psql -d <YOUR DATABASE NAME> -f buildupdate_v3_1_v3_2.sql

(And if you are upgrading from a version of the DVN *earlier* than 3.1, 
please also consult the README files for *all* the versions in between!)

---

As always, if you have any questions and/or run into problems, please
contact us at dvn_support@help.hmdc.harvard.edu.
