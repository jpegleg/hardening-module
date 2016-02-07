HARDENING MODULE


Apply this puppet module to your GNU/Linux sytem to harden it a little.
≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣≣
⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽⊽

WARNING: the iptables command execution implementation has a resource leak on repeat runs, confirmed in Debian, applying the class only once per boot is the way to go for Debian based systems (and probablay other distros) for now using this module.

Considering applying the class on an emergency reaction basis.
