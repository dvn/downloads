UPDATE: DVN v.2.0.2 has been released. 

This is a minor update release. It contains the following changes:
1.  A set of options in the Utilities page for managing handle registration
2.  Additional logic has been added to the filedownload component for accessing files that require special authorization.
3.  When defining a dynamic query for a collection, the query search results have been limited to at most 30,000 studies.
4. A fix in the POR file ingest component. 

In addition to the standard installation instructions below,
there are 2 important notes: 

1. There was a problem with the DVN-built R rpm that was
   distributed with the original 2.0 release. The Rserve
   password file /etc/Rserve.pwd was unreadable for the user
   rserve, which prevented it from accepting connections. 
   The currently available rpm fixes this issue (availabe at 
   http://dvn.iq.harvard.edu/dist/R/DVN-2.0/)

   Alternatively, you can simply change the owenership of
   the file by running
       chown apache /etc/Rserve.pwd

2. Please note that there is a new glassfish configuration
   option that needs to be set: 

   <property name="allowLinking" value="true"/>

   under <virtual-server ... configuration. 
   Please see the installation manual
   (http://thedata.org/guides/installers) under "Configure
   Glassfish" for more information. 

END OF UPDATE.

This README file contains information about the files needed
to install the Dataverse Network (DVN) software version 2.0.

For installation instructions, visit: http://thedata.org/guides/installers

 
Files needed for Fresh installation:

- DVN-EAR-2.0.2-1.ear 

- config_v2_0.zip, config files to be put into the glassfish
  domain directory (includes its own short README).  

- referenceData_v2_0.sql

(follow instructions for a fresh installation from http://thedata.org)

______________________________________________________________________________

Files needed for an upgrade from v1.5:

- DVN-EAR-2.0.2-1.ear 

- buildupdate_v1_5_v2_0.sql

(to set up Google Analytics, follow instruction from http://thedata.org)

______________________________________________________________________________

Important: This version of the DV software contains updates
in how a study is indexed. To take full advantage of these
improvements, you will need to use the index utility to
reindex all of your current studies.
