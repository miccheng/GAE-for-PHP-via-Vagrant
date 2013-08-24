class gaephp
{
	Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }
	require apt
	include db
	include php
	include gae
}