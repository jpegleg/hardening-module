HARDENING MODULE


Apply this puppet module to your GNU/Linux sytem to harden it a little.
≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣
⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽

WARNING: the iptables command execution implementation results in a resource leak on repeat runs, confirmed in Debian.

On non Red Hat/Centos systems, if you want to apply the iptables lockdown sequence, call it separately:

iptlm anyos

Keep port 22 open for outside initiated connections:

iptlm anyos andopen 22
