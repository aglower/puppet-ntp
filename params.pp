class ntp::params {
  String $package_name,
  String $package_ensure,
  String $config_name, 
  String $config_file_mode,
  String $servers,
  String $service_ensure,
  Boolean $service_enable,
  Boolean $service_hasrestart,
  Boolean $service_hasstatus,

  $service_name = $facts['os']['family'] ? {
     'Debian' => 'ntp',
     default  => 'ntpd'
  }
} 
