# Install install flask from pip3
package { 'python3':
  ensure => installed,
}

package { 'python-pip':
  ensure => installed,
}

python::pip { 'Flask':
  ensure    => '2.1.0',
  provider  => 'pip3',
  require   => Package['python-pip'],
}

python::pip { 'Werkzeug':
  ensure    => '2.1.1',
  provider  => 'pip3',
  require   => Package['python-pip'],
}
