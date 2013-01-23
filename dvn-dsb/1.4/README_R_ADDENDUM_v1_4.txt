IMPORTANT ADDENDUM: 

************************************************************

About Installing the required R package VDCutil (version 1.17) for the
DSB (version 1.4)

This packages cannot be installed through CRAN. The correct
version of the package is shipped with the DSB rpm. Please
install it manually by running the following commands (after
the DVN-DSB rpm has been successfully installed). 

$ R CMD REMOVE -l /usr/lib/R/library VDCutil
$ R CMD INSTALL -l /usr/lib/R/library VDCutil_1.17.tar.gz

Dataverse Network Project
dvn_support@help.hmdc.harvard.edu
http://thedata.org/contact

