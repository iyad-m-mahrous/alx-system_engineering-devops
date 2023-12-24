# Install install flask from pip3
class { 'python':
  version => 'system',
}

package { 'python3-pip':
  ensure => installed,
  require => Class['python'],
}

python::pip { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'],
}
