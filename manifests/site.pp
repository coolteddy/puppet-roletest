# class { 'role::motd':}

# Can use this or above
include role::motd

# this is not working
# node default {
#   hiera_include('classes')
# }
