file { '/etc/ssh/sshd_config':
ensure => file,
owner  => 'root',
group  => 'root',
mode   => '0644',
source => 'puppet:///modules/ssh/etc_ssh_sshd_config',
notify => Service['sshd'],
}
