# Install install flask from pip3
python3::pip { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
