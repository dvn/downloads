IMPORTANT ADDENDUM: 

************************************************************

About Installing the VDCutil Package (version 1.16) for the
Dataverse (version 1.3)

2008-08-13

As of August 13, 2008, the CRAN(Comprehensive R Archive
Network) has not yet accepted the latest
VDCutil package (version 1.16) for the Dataverse version 1.3
due to one minor problem of Zelig
package on which the VDCutil package relies.

Therefore, after the Dataverse DSB (release 1.3) is
installed, please manually remove the existing
VDCutil package and install the version 1.16 on your DSB
machine as follows:

$ R CMD REMOVE -l /usr/lib/R/library VDCutil
$ R CMD INSTALL -l /usr/lib/R/library VDCutil_1.16.tar.gz

A copy of the VDCutil package (version 1.16) is available
from http://dvn-1.hmdc.harvard.edu/vdcutil/VDCutil_1.16.tar.gz



Dataverse Network Project
dvn_support@help.hmdc.harvard.edu
http://thedata.org/contact

