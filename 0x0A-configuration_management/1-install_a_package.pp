# Install install flask from pip3
python::pip { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
