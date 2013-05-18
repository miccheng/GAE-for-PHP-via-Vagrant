class apt{

  exec { 'apt-update':
    command => '/usr/bin/aptitude -y update',
  }

}