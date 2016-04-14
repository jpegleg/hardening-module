HARDENING MODULE


Apply this puppet module to your GNU/Linux sytem to harden it a little.
Because SELINUX takes effort and this module is immediate and easy ~
⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽

Run the hardening script:

$ hardening-module

Run the script a second time:

$ rm -f /var/tmp/hardening-module.lock
$ hardening-module

To call the iptables lock down sequence manually:

$ iptlm

Keep port 22 open for outside initiated connections:

$ iptlm 22

And there is an option to keep one more port open and listening if needed:

$ ipltm 22 andopen 443

The module by default will not leave any ports open when applied and not run the sequence again until the lock file is removed.

$ rm /var/tmp/iptables-lockdown-mode.lock

The lock file contains the date from when it was written, the timestamp of when the iptables sequence was last run:

$ cat /var/tmp/iptables-lockdown-mode.lock 
Tue Feb 23 20:30:56 MST 2016

The above lock concepts apply to the hardening-module lock file as well:

$ cat /var/tmp/hardening-module.lock 
Tue Feb 23 20:30:59 MST 2016
