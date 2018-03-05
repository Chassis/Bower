# A Chassis extension to install Bower on your Chassis server
class bower (
	$config,
	$path = '/vagrant/extensions/bower',
) {
	if ( ! empty($config[disabled_extensions]) and 'chassis/bower' in $config[disabled_extensions] ) {
		exec { 'uninstall bower':
			path    => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/' ],
			command => 'npm uninstall -g bower',
		}
	} else {
		exec { 'install bower':
			path    => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/' ],
			command => 'npm install -g bower',
			require => [ Class['nodejs'] ],
			unless  => 'which bower',
		}
	}
}
