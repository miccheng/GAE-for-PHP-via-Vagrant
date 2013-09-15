class gae{
  package { "unzip":
    ensure  => present,
  }
  exec {"grab-gaesdk":
    command => "/usr/bin/wget http://googleappengine.googlecode.com/files/google_appengine_1.8.4.zip",
    cwd     => "/usr/local/src/",
    creates => "/usr/local/src/appengine-php-sdk-1.8.4.zip",
    require => Package["unzip"]
  }
  exec { "unzip-gaephp":
    command => "/usr/bin/unzip appengine-php-sdk-1.8.4.zip",
    cwd     => "/usr/local/src/",
    creates => "/usr/local/src/google_appengine",
    require => Exec["grab-gaesdk"]
  }

}
