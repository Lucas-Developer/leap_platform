duplicity-backup-status
=======================

Backupninja generates duplicity configfiles, this nagios plugin can check their freshness. Currently only the config files generated by backupninja can be parsed and we depend on that.

## Prerequisites

Make sure you have python-argparse installed (yes an extra dependency, getopt doubles the amount of code, so I gave up on that). The Python script will look for the duplicity_freshness.sh shell script in /usr/local/lib/nagios/plugins/ or /usr/lib/nagios/plugins/ make sure you copy it there and make executable. 

## Getting started

Run the python script from your nagios. Don't forget to specify some extras like when warnings or criticalities should be emerged.

-  -w WARNINC   Number of hours allowed for incremential backup warning level default 28
-  -W WARNFULL  Number of hours allowed for incremential backup critical level default 40
-  -c CRITINC   Number of days allowed for full backup warning level default 52
-  -C CRITFULL  Number of days allowed for full backup critical level default 60


## TODO:

- make it cuter, tidy up
- make it more robust
- support other config backends as backupninja - this can be done by writing more scripts like backupninja_duplicity_freshness.sh and parsing an extra parameter
