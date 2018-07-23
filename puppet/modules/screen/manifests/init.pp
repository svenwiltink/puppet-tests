class screen (
  $ensure = 'purged'
) {

  package { 'screen':
    ensure => $ensure,
  }
}