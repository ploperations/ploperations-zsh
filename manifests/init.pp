class zsh (
  $zshpackage = $::zsh::params::zshpackage,
  $zshpath    = $::zsh::params::zshpath,
  $ensure     = installed,
) inherits ::zsh::params {

  if $zshpackage {
    package { $zshpackage:
      ensure => $ensure,
      alias  => 'zsh',
    }
  }
}
