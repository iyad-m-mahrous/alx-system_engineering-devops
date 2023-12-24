
# Install install flask from pip3
package { 'python3-pip':
  ensure => installed,
}

python::pip { 'Flask':
  ensure    => '2.1.0',
  provider  => 'pip3',
  command   => '/usr/bin/pip3 install Flask==2.1.0',
  unless    => '/usr/bin/pip3 show Flask | grep -q "Version: 2.1.0"',
  path      => ['/usr/bin'],
  logoutput => true,
  require   => Package['python3-pip'],
}

python::pip { 'Werkzeug':
  ensure    => '2.1.1',
  provider  => 'pip3',
  command   => '/usr/bin/pip3 install Werkzeug==2.1.1',
  unless    => '/usr/bin/pip3 show Werkzeug | grep -q "Version: 2.1.1"',
  path      => ['/usr/bin'],
  logoutput => true,
  require   => Package['python3-pip'],
}
