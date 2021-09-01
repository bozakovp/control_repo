node master.lan {
  file {'/root/README':
    ensure => file,
  }
}
