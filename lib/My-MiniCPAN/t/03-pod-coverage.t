use strict;
use warnings;
use threads;
use Test::More;
eval "use Test::Pod::Coverage 1.08";
plan skip_all => "Test::Pod::Coverage required for testing pod coverage" if $@;

plan tests => 1;
pod_coverage_ok(
    'My::MiniCPAN',
    'My::MiniCPAN is covered',
);