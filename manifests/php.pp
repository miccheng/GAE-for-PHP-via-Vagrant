class php {

  File {
    owner   => "root",
    group   => "root",
    mode    => 644,
    require => Package["httpd"],
    notify  => Service["httpd"]
  }

  package { "php5":
    ensure  => present,
    require => Exec["ondrej"]
  }

  package { "php5-cgi":
    ensure  => present,
    require => Exec["ondrej"]
  }

  package { "php5-mysql":
    ensure  => present,
    require => Exec["ondrej"]
  }

  package { "php-apc":
    ensure  => present,
    require => Exec["ondrej"]
  }

  package { "php-soap":
    ensure  => present,
    require => Exec["ondrej"]
  }

  package { "php5-gd":
    ensure  => present,
    require => Exec["ondrej"]
  }

  package { "php5-xdebug":
    ensure  => present,
    require => Exec["ondrej"]
  }

  package { "php5-xsl":
    ensure  => present,
    require => Exec["ondrej"]
  }

}