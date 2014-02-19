include apt

class basicPackages {

	exec{ "apt-update":
		command => "/usr/bin/apt-get update",
		before => Package['python-software-properties'],
	}

	package {"python-software-properties":
		ensure => "latest",
		before => Package["software-properties-common"]
	}

	package {"software-properties-common":
		ensure => "latest",
		before => Apt::Ppa["ppa:directhex/monoxide"],
	}

	package { "make":
		ensure => "latest",
	}

	package { "libtool":
		ensure => "latest",
	}

	package { "automake":
		ensure => "latest",
	}

	package { "autoconf":
		ensure => "latest",
	}

	package { "git-core":
		ensure => "latest",
	}

	package { "g++":
		ensure => "latest",
	}

	package { "gettext":
		ensure => "latest",
	}

	package { "pkg-config":
		ensure => "latest",
	}

	apt::ppa { 'ppa:directhex/monoxide':
		before => Package["mono-complete"],
	}

	package{"mono-complete":
		ensure => "latest",
	}

	package{"albacore":
		ensure => "latest",
		provider => 'gem',
	}

	class { 'nginx': }
}

include basicPackages