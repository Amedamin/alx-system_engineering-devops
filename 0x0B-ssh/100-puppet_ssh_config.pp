# Puppet manifest to configure SSH client using Augeas

# Install Augeas if not already installed
package { 'augeas':
  ensure => installed,
}

# Configure SSH client using Augeas
augeas { 'ssh_config':
  context => '/files/etc/ssh/ssh_config',
  changes => [
    'set Host/* IdentityFile ~/.ssh/school',
    'set Host/* PasswordAuthentication no',
  ],
  require => Package['augeas'],
}
