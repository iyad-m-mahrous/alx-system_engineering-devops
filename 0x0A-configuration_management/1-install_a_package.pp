# Install install flask from pip3
package { 'python3':
  ensure => installed,
}

package { 'python3-pip':
  ensure => installed,
  require => Package['python3'],
}

python::pip { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'],
}
