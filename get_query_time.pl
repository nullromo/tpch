#!/usr/bin/perl
#
# Execute a transaction and output the time it takes.
#

use strict;
use warnings;
use Time::HiRes qw(gettimeofday tv_interval);

my ($transaction, $database) = ($ARGV[0], $ARGV[1]);
if( !defined($transaction) ){
	print("input transaction file is not specified\n");
	exit(1);
}
if( !defined($database) ){
    print("database not specified\n");
}

my $starttime = [gettimeofday()];
system("cat $transaction | mysql -u root --password='mysql' $database >/dev/null");

my ($user, $sys, $child_user, $child_sys) = times;
print "=== runtime ===\n";
my $wallclocktime = tv_interval($starttime);
print "wall clock time: $wallclocktime\n",
	"user time: $user\n",
	"system time: $sys\n",
	"user time for all children: $child_user\n",
	"system time for all children: $child_sys\n";
printf	"others(I/O): %0.6f second\n",
		$wallclocktime-$user-$sys-$child_user-$child_sys;
