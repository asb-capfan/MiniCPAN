#!perl

use warnings;
use strict;
use FindBin qw/$Bin/;
use lib $Bin . '/../lib/My-MiniCPAN/lib';
use My::MiniCPAN;

# ugly workaround to avoid the need of having the configuration database installed
# to %localappdata%/.minicpan while testing / debugging
use File::Spec;
use File::HomeDir;
use File::ShareDir;
my %options = ();
my $expected = File::Spec->catfile( File::HomeDir->my_data, '.minicpan', 'my-minicpan-config.sqlite' );
my $alternative = File::ShareDir::dist_file('My-MiniCPAN', 'dist/' . 'my-minicpan-config.sqlite');
$options{config_db} = $alternative unless -e $expected;

my $app = My::MiniCPAN->new(
	%options
);
$app->run;
exit(0);