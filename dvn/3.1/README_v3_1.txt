Welcome to the DVN application version 3.1!
==============================================================

For a list and description of new features in this release, please consult 

http://thedata.org/pages/latest-release


Installing the DVN.
================== 

If this is a new installation:
-----------------------------

A scripted installer is provided. Please consult the Installers Guide at

http://projects.iq.harvard.edu/thedatanew_guides/book/installers-guides.

The installer package itself can be found here:

https://sourceforge.net/projects/dvn/files/dvn/3.1/dvninstall_v3_1.zip.

If you are upgrading an existing DVN v3.0 installation:
---------------------------------------------------------

1. Download the .war file and the SQL database update script
(DVN-web_v3_1.war and buildupdate_v3_0_v3_1.sql). 

2. Deploy the application .war file. 

3. Run the database update script. For the database update
we recommend using pgAdmin application. 

You may also run the script on the command line using the psql utility
(as root): 
su postgres psql -d <YOUR DATABASE NAME> -f buildupdate_v2_2_3_v2_2_4.sql

4. In version 3.1, a change was made so that aliases are no longer case  
sensitive. If you are upgrading from a previous version, you will need  
to check to make sure that there are no current dataverses that would  
now share (case insensitive) aliases. Please run the following query:

select alias, createddate, creator_id, username from vdc, vdcuser
where vdcuser.id = vdc.creator_id
and lower(alias) in (
select lower(alias) from vdc
group by lower(alias) having count(*)>1
)
order by lower(alias), createddate

If this query returns any results, the alias of one or both of the  
dataverses will need to be modified before you install this version.  
This can be done though the dataverse admin options (Edit General  
Settings).

(And if you are upgrading from a version of the DVN *earlier* than 3.0, 
please also consult the README files for *all* the versions in between!)

---

As always, if you have any questions and/or run into problems, please
contact us at dvn_support@help.hmdc.harvard.edu.
