# Set server to not need password auth

file { 'Turn off passwd auth':
  path => '/etc/ssh/ssh_config',
  line => 'passwordAuthentication'

}

file_line {'Declare identity file':
  path => 'etc/ssh/ssh_config',
  line => 'IdentityFile ~ssh/.ssh/school'
}
