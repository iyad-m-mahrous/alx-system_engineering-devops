# Install install flask from pip3
package { 'python3.8':
  ensure => '3.8.10',
}

package { 'python3-pip':
  ensure => present,
}

python::pip { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip',
  require  => Package['python3-pip'],
}

package { 'werkzeug':
  ensure   => '2.1.1',
  provider => 'pip',
  require  => Package['python3-pip'],
}
