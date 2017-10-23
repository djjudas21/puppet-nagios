# Installs the nagios plugin itself from arbitrary sources
# e.g. package, vcsrepo, file
define nagios::plugin (
  String $plugin_provider,
  String $plugin_source,
) {
  if ($plugin_provider == 'package') {
    ensure_packages($plugin_source)
  } else {
    ensure_resources($plugin_provider, $plugin_source)
  }
}
