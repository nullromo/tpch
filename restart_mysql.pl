#!/usr/bin/perl -w

sub myexec {
	my ($cmd) = @_;
	print "\n\$> ". $cmd . "\n";
	system($cmd);
}

sub test {
    system("mysqladmin -uroot -pmysql ping >/dev/null 2>&1");
}

myexec("mysqladmin -u root --password='mysql' shutdown &");
test();
while ($? == 0) {
    test();
}
myexec("sync");
myexec("echo 3 > /proc/sys/vm/drop_caches");
myexec("mysqld --local-infile=1 &");
test();
while ($? != 0) {
    test();
}
print "mysql restarted."
