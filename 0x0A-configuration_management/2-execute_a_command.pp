# exec resource to kill the process "killmenow"

exec { 'killmenow':
  command     => 'pkill -f killmenow',
  provider => 'shell'
}
