class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCoh2Zggt6WqBFLyMwZU/9VH7cBYXW9D1DOsxmX6sDcCoTlj02NI+JC1PdDG/BGr0dV3ND+wkjGXABALeM6VZ7B6zJwqSYJJGHWfQiOG+xqy4nIafSMHWVx8uGdw/8FdDgiu2QnmQyM3Ctth6hjTKEsGa/1ghVzx6X3hEcb0xmlAvQaxCgNNFhq0XqLrjd7ingdAoP+3df1IwRou8d85ZsS2fGv7skSdwjg5Xu9JlVriRL7sgujLbR0cBsWP+hMeXHRkA1FG+CuXpleFuR2xtSc3UA0jf3GigLqgeZq6yfGhazDA9PU9Faitn6yo8ldKtXFfFixRPFAY+EK9ifJAiiJ',
  }  
}
