# using Puppet to make changes to our configuration file
file_line { 'password':
    ensure   => present,
    line     => 'PasswordAuthentication no',
    match    => '^.?.*PasswordAuthentication yes$',
    replace  => true,
    path     => '/etc/ssh/ssh_config',
    multiple => false,
}

file_line { 'identity':
    ensure             => present,
    line               => 'IdentityFile ~/.ssh/school',
    match              => '^.*IdentityFile ~/.ssh/school$',
    path               => '/etc/ssh/ssh_config',
    multiple           => false,
    append_on_no_match => true,
}
