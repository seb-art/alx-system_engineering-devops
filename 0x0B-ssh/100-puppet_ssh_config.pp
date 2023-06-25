#This puppet mainfest configures using private key ~/.ssh/school
class ssh_config {
  file { 'alx-system_engineering-devops/0x0B-ssh/.ssh/config':
    ensure  => file,
    owner   => 'ubuntu',
    group   => 'ubuntu',
    mode    => '0644',
    content => "# Puppet-managed file. Do not edit.\n
Host myserver
    HostName 54.198.65.169
    User ubuntu
    IdentityFile ~/.ssh/school
    PasswordAuthentication no\n",
  }
}
