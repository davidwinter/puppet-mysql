class mysql (
		$ensure = 'present',
	) {

	$running = $ensure ? {
		absent  => 'stopped',
		default => 'running',
	}
	
	package { 'mysql-server':
		ensure => $ensure,
	}

	service { 'mysql':
		ensure  => $running,
		require => Package['mysql-server'],
	}

	file { '/etc/mysql/conf.d/utf8.cnf':
		ensure   => $ensure,
		source => 'puppet:///modules/mysql/utf8.cnf',
		require  => Package['mysql-server'],
		notify   => Service['mysql'],
	}
	
}