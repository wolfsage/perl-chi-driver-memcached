package CHI::Driver::Memcached::t::CHIDriverTests::Fast;
use Test::More;
use strict;
use warnings;
use base qw(CHI::Driver::Memcached::t::CHIDriverTests::Base);

sub testing_driver_class { 'CHI::Driver::Memcached::Fast' }
sub test_driver_class    { 'CHI::Driver::Memcached::Test::Driver::Fast' }

sub right_memcached_loaded : Test(shutdown => 2) {
    ok( exists( $INC{'Cache/Memcached/Fast.pm'} ) );
    ok( !exists( $INC{'Cache/Memcached.pm'} ) );
}

1;