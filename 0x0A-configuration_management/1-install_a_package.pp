# Install install flask from pip3
package { 'python3':
  ensure => installed,
}

package { 'python3-pip':
  ensure => installed,
  require => Package['python3'],
}

exec { 'install_flask_2.1.0':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  path    => ['/usr/bin'],
  unless  => '/usr/bin/pip3 show Flask | grep -q "Version: 2.1.0"',
  require => Package['python3-pip'],
}
