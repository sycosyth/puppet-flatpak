# Install flatpak packages
class flatpak::packages() {

    $package_defaults = {
        ensure  => 'present',   # ensure => 'present' is the default for ensure_packages.
        remote  => 'flatpak',
    }

    # Install packagages that are marked for installation in hiera
    $flatpak_packages_hash = lookup('flatpak::packages', Hash, $::cbn_deep_merge, {})
    info ("${::facts['fqdn']}: flatpak_packages:\n${flatpak_packages_hash.to_yaml}")
    create_resources('flatpak', $flatpak_packages_hash)

}
