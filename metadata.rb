name             'mpt-status'
maintainer       'Boye Holden'
maintainer_email 'boye.holden@hist.no'
license          'Apache 2.0'
description      'Removes service and package mpt-status from virtual Debian 6 hosts'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe 'mpt-status', 'Removes service and package if host is a virtual Debian 6'

supports 'debian', '= 6.0'
