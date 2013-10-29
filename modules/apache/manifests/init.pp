class apache {
  $configdir = '/etc/httpd'
  $vhostdir = '/etc/httpd/conf.d'
  $docroot = '/var/www/html'
  
  include apache::packages
  include apache::service
  
  Class['apache::packages'] -> Class['apache::service']
}