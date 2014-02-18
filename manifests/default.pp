include apt

class meta-social {

	package { "make":
		ensure => present,
#		before => Exec['/vagrant/scripts/build-mono.sh'],
	}

	package { "libtool":
		ensure => present,
#		before => Exec['/vagrant/scripts/build-mono.sh'],
	}

	package { "automake":
		ensure => present,
#		before => Exec['/vagrant/scripts/build-mono.sh'],
	}

	package { "autoconf":
		ensure => present,
#		before => Exec['/vagrant/scripts/build-mono.sh'],
	}

	package { "git-core":
		ensure => present,
#		before => Exec['/vagrant/scripts/build-mono.sh'],
	}

	package { "g++":
		ensure => present,
#		before => Exec['/vagrant/scripts/build-mono.sh'],
	}

	package { "gettext":
		ensure => present,
#		before => Exec['/vagrant/scripts/build-mono.sh'],
	}

	package { "pkg-config":
		ensure => present,
#		before => Exec['/vagrant/scripts/build-mono.sh'],
	}

	#apt::source { "badgerports":
	#	location => "http://badgerports.org",
	#	repos => "main",
#		key => "0E1FAD0C",
#		key_server => "keyserver.ubuntu.com",
#		before => Exec['/vagrant/scripts/build-mono.sh'],
#	}

#	exec { "/vagrant/scripts/build-mono.sh":
#		cwd => "/tmp",
#		#creates => "/usr/local/bin/mono",
#		timeout => 0,
#	}
}

include meta-social