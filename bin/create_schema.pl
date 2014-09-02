#!perl

use strict;
use warnings;
use FindBin qw/$Bin/;
use File::Spec qw/catfile catdir/;
use DBI;
use DBD::SQLite;
use DBIx::Class::Schema::Loader qw/ make_schema_at /;

my $dump_directory = File::Spec->catdir($Bin, '..', 'lib', 'My-MiniCPAN', 'lib');
my $database = 'my-minicpan-config.sqlite';
my $driver   = "SQLite";
my $dsn = "DBI:$driver:dbname=$database";
my $userid = '';
my $password = '';

make_schema_at(
    'My::MiniCPAN::Schema',
    { debug => 1,
      dump_directory => $dump_directory,
    },
    [ $dsn, $userid, $password,],
);

print "Creating schema done\n";
exit(0);