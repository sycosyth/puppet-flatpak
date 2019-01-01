# == Class: flatpak::install
#
# @summary Configure repo and install Flatpak
#
# === Parameters
#
# @param package_ensure Ensure value of the package
# @param package_name Name of the package in the repo
#
# @example
#   include ::flatpak::install
#
# === Authors
#
# Bryan Wyatt <brwyatt@gmail.com>
#
# === Copyright
#
# Copyright 2018 Bryan Wyatt, unless otherwise noted.
#
# This file is part of brwyatt-flatpak.
#
# brwyatt-flatpak is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# brwyatt-flatpak is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with brwyatt-flatpak.  If not, see <http://www.gnu.org/licenses/>.

class flatpak::install (
  String $package_ensure,
  String $package_name,
){
  include ::flatpak::repo

  package { 'flatpak':
    name   => $package_name,
    ensure => $package_ensure,
  }
}

# vim: ts=2 sts=2 sw=2 expandtab