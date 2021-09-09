class minecraft (
  $url = 'https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar',
  $install_dir = '/opt/minecraft',
){
  file { $instasll_dir:
    ensure => directory,
  }
  file { "${install_dir}/minecraft_server.jar":
    ensure => file,
    source => '$url,
  }

  file {'/etc/systemd/system/minecraft.service':
    ensure => file,
    content => epp('minecraft/minecraft.service',{
      install_dir => $install_dir
    })
  }
  service { 'minecraft':
    ensure => running,
    enable => true,
    require => [File["${install_dir}/eula.txt"],File['/etc/systemd/system/minecraft.service']]
  }
}
