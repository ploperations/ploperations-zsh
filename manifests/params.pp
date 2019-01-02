# @summary Default parameter values
#
# Default parameter values
class zsh::params {
  case $facts['kernel'] {
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
    default: {
      fail("${facts['kernel']} not supported by this module")
    }
  }
}
