# == Class: openssl
#
# Installs openssl and ensures bundled certificate list is world readable.
#
# === Parameters
#  [*package_ensure*]           openssl package ensure
#  [*ca_certificates_ensure*]   ca-certificates package ensure
#  [*libssl_dev_ensure*]        libssl-dev ensure
#
# === Example
#
#   class { '::openssl':
#     package_ensure         => latest,
#     ca_certificates_ensure => latest,
#     libssl_dev_ensure      => latest,
#   }
#
class openssl (
  $package_ensure         = present,
  $ca_certificates_ensure = present,
  $libssl_dev_ensure      = present,
){
  class { '::openssl::packages': } ->
  Class['openssl']
}
