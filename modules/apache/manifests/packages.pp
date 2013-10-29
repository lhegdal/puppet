class apache::packages {
    $apache_package = $::operatingsystem ? {
      Ubuntu    =>  'apache2',
      debian    =>  'apache2',
      redhat    =>  'httpd',
      centos    =>  'httpd',
      default   =>  'httpd';
    }

    package {
        $apache_package:
            ensure  =>  installed;
    }
}