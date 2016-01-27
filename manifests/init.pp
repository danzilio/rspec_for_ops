class ntp (
  $package_name = 'ntpd',
  $config_file  = '/etc/ntpd.conf',
  $service_name = 'ntpd',
){
  package { $package_name: }
  file { $config_file:
    ensure  => file,
    content => file('ntp/ntpd.conf'),
    require => Package[$package_name],
    notify  => Service[$service_name],
  }
  service { $service_name:
    ensure => running,
    enable => true,
  }
}
