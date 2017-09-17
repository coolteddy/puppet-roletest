class profile::base {
  file { '/tmp/profiletest' :
    ensure  => 'present',
    content => 'puppet test is good',
  }

  include ::timezone

}
