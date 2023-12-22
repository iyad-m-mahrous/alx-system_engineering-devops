# Using Puppet, install flask from pip3.
package { 'flask':
  provider => 'pip3',
  version => '2.1.0',
}
