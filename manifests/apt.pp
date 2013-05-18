class apt{

  package { "python-software-properties":
    ensure  => present
  }
  exec { 'ondrej':
    command => '/usr/bin/add-apt-repository ppa:ondrej/php5',
    require => Package["python-software-properties"]
  }

  exec { 'apt-update':
    command => '/usr/bin/aptitude -y update',
    require => Exec["ondrej"]
  }

}