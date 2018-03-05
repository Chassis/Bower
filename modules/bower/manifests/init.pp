# A Chassis extension to install Bower on your Chassis server
class bower (
	$config,
	$path = '/vagrant/extensions/bower',
) {
	exec { 'install bower':
		path    => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/' ],
		command => 'npm install -g bower',
		require => [ Class['nodejs'] ],
		unless  => 'which bower',
	}
}
