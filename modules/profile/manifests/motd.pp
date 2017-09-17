class profile::motd {

  file { '/etc/motd':
    ensure  => 'present',
    content => file('profile/message'),
  }
}
