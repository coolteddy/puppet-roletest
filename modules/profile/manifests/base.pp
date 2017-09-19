class profile::base {
  file { '/tmp/profiletest' :
    ensure  => 'present',
    content => 'puppet test is good',
    owner => 'vagrant',
  }

  file { '/tmp/profiletest1' :
    ensure  => 'present',
    content => 'puppet test is good',
    owner => 'vagrant',
  }

  File {
    owner => 'root',
    mode  => '0755',
  }
  
  file { '/tmp/test1.service' :
    source => 'puppet:///modules/profile/message',
  }
  file { '/tmp/test2.service' :
    source => 'puppet:///modules/profile/message',
  }

  include ::timezone

}
