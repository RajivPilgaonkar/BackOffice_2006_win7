package RailDB;

use strict;
use warnings;

use base qw(Class::DBI::Sybase);

our $VERSION = '0.01';

my ($dsn, $user, $passwd) = _getSQLConfig();

RailDB->set_db(
	'Main',
	$dsn,
	$user,
	$passwd,
	{AutoCommit => 1, RaiseError => 0}, 
);

sub _getOraConfig {
	
	my $dbhost 	 = 'localhost';
	my $dbsid 	 = 'xe';
	my $dbuser	 = 'trains';
	my $dbpasswd = 'ip31415';
	
	my $dsn = "dbi:Oracle:host=$dbhost;sid=$dbsid";

	return ($dsn, $dbuser, $dbpasswd);
}

sub _getSQLConfig {
	
	my $dbserver = 'Odyssey';
	my $dbname 	 = 'Jadoo_2006';
	my $dbuser	 = 'sa';
	my $dbpasswd = 'sa123';
	
	my $dsn = "dbi:Sybase:server=$dbserver;database=$dbname";

	return ($dsn, $dbuser, $dbpasswd);
}

1;
__END__
