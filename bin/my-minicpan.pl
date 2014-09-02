#!perl

use warnings;
use strict;
use FindBin qw/$Bin/;
use lib $Bin . '/../lib/My-MiniCPAN/lib';
use My::MiniCPAN;

my $app = My::MiniCPAN->new(
    config_db => $Bin . '/my-minicpan-config.sqlite',
);
$app->run;
exit(0);