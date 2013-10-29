class apache::service {
  $apache_service = $::operatingsystem ? {
    Ubuntu => 'apache2',
    debian => 'apache2',
    redhat => 'httpd',
    centos => 'httpd',
    default => 'httpd'
  }
  
  service {
    $apache_servie:
      ensure      => running,
      enable      => true,
      hasstatus   => true,
      hasrestart  => true;
  }
}