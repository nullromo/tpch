#!/usr/bin/perl -w
use strict;
use warnings;
#
# Execute all queries, except 18.sql
#

my $database = $ARGV[0];
if( !defined($database) ){
    print("database not specified\nusage: get_all_query_time <database>\n");
    exit(1);
}

my $output = "results/${database}_query_time.data";

for (my $i = 1; $i <= 22; $i++){

    # skip query 18 because it takes long time
    next if $i == 18;

    print "query $i\n";
    system("./restart_mysql.pl");
    system("echo query: $i >> $output");
    system("./get_query_time.pl queries/$i.sql $database >> $output");
}
