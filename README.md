HARDENING MODULE


Apply this puppet module to your GNU/Linux sytem to harden it a little.
≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣
⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽


To call the iptables lock down sequence manually:

iptlm anyos

Keep port 22 open for outside initiated connections:

iptlm anyos andopen 22
