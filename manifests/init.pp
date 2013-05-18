# Puppet manifest for my PHP dev machine
Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }
class gaephp{
  require apt
  include db
  include php
  include gae
}
include gaephp