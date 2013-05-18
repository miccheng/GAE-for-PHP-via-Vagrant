class php {

  File {
    owner   => "root",
    group   => "root",
    mode    => 644,
    require => Package["httpd"],
    notify  => Service["httpd"]
  }

  package { "php5":
    ensure  => present
  }

  package { "php5-cgi":
    ensure  => present
  }

  package { "php5-mysql":
    ensure  => present
  }

  package { "php-apc":
    ensure  => present
  }

  package { "php-soap":
    ensure  => present
  }

  package { "php5-gd":
    ensure  => present
  }

  package { "php5-xdebug":
    ensure  => present
  }

  package { "php5-xsl":
    ensure  => present
  }

}