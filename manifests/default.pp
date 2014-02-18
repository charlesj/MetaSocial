include apt

class basicPackages {

	exec{ "apt-update":
		command => "/usr/bin/apt-get update",
		before => Package['python-software-properties'],
	}

	package {"python-software-properties":
		ensure => present,
		before => Package["software-properties-common"]
	}

	package {"software-properties-common":
		ensure => present,
		before => Apt::Ppa["ppa:directhex/monoxide"],
	}

	package { "make":
		ensure => present,
	}

	package { "libtool":
		ensure => present,
	}

	package { "automake":
		ensure => present,
	}

	package { "autoconf":
		ensure => present,
	}

	package { "git-core":
		ensure => present,
	}

	package { "g++":
		ensure => present,
	}

	package { "gettext":
		ensure => present,
	}

	package { "pkg-config":
		ensure => present,
	}

	apt::ppa { 'ppa:directhex/monoxide':
		before => Package["mono-complete"],
	}

	package{"mono-complete":
		ensure => present,
	}
}

include basicPackages