class site_config::x509::commercial::ca {

  include ::site_config::params

  $x509      = hiera('x509')
  $ca        = $x509['commercial_ca_cert']

  #
  # CA cert might be empty, if it was bundled with 'commercial_cert'
  # instead of specified separately.
  #
  if ($ca) {
    x509::ca { $site_config::params::commercial_ca_name:
      content => $ca
    }
  }
}
