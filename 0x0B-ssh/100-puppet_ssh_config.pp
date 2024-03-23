#!/usr/bin/env bash
# Puppet manifest to configure SSH client

file_line { 'Turn off passwd auth':
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication no',
  match  => '^#?\s*PasswordAuthentication',
  replace            => true,
  append_on_no_match => true
}

file_line { 'Declare identity file':
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school',
  match  => '^#?\s*IdentityFile',
  replace            => true,
  append_on_no_match => true
}
