class php
{
  File {
    owner   => "root",
    group   => "root",
    mode    => 644,
    require => Package["httpd"],
    notify  => Service["httpd"]
  }

  package { [
      "php5",
      "php5-cgi",
      "php5-mysql",
      "php-apc",
      "php-soap",
      "php5-gd",
      "php5-xdebug",
      "php5-xsl"
    ]:
    ensure  => present
  }
}