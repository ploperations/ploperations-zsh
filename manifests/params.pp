class zsh::params {

  case $::kernel {
    'Linux': {
      $zshpackage = 'zsh'
      $zshpath    = '/usr/bin/zsh'
    }
    'FreeBSD': {
      $zshpackage = 'zsh'
      $zshpath    = '/usr/local/bin/zsh'
    }
    'SunOS': {
      $zshpackage = 'shell/zsh'
      $zshpath    = '/usr/bin/zsh'
    }
  }
}
