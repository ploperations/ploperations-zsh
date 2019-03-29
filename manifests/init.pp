# @summary Install zsh packages
#
# Install zsh packages
#
# @example Basic usage
#   include zsh
#
# @param zshpackage
#   The name of the package to be installed
# @param zshpath
#   The path to the zsh binary once installed
# @param ensure
#   This value is passed directly to the package resouce for $zshpackage.
#   See here for valid values:
#   https://puppet.com/docs/puppet/latest/types/package.html#package-attribute-ensure
#
class zsh (
  String[1]            $zshpackage = $zsh::params::zshpackage,
  Stdlib::Absolutepath $zshpath    = $zsh::params::zshpath,
  $ensure                          = installed,
) inherits zsh::params {
  if $zshpackage {
    package { $zshpackage:
      ensure => $ensure,
      alias  => 'zsh',
    }
  }
}
