#!perl

use strict;
use warnings;
use DBI;
use DBD::SQLite;

my $database = 'my-minicpan-config.sqlite';
unlink $database if -e $database;

my $driver   = "SQLite";
my $dsn = "DBI:$driver:dbname=$database";
my $userid = "";
my $password = "";
my $dbh = DBI->connect($dsn, $userid, $password, { RaiseError => 1 })
                      or die $DBI::errstr;
print "Opened database successfully\n";

my @statements = ();

push @statements, qq~
    CREATE TABLE option (
        id INTEGER PRIMARY KEY,
        name    TEXT    NOT NULL,
        value   TEXT    NOT NULL
    )
~;

push @statements, q~INSERT INTO option VALUES (NULL, "remote", "ftp://mirror.petamem.com/CPAN/")~;
push @statements, q~INSERT INTO option VALUES (NULL, "local", "")~;
push @statements, q~INSERT INTO option VALUES (NULL, "dirmode", "0711")~;
push @statements, q~INSERT INTO option VALUES (NULL, "exact_mirror", 0)~;
push @statements, q~INSERT INTO option VALUES (NULL, "ignore_source_control", 1)~;
push @statements, q~INSERT INTO option VALUES (NULL, "force", 0)~;
push @statements, q~INSERT INTO option VALUES (NULL, "skip_perl", 1)~;
push @statements, q~INSERT INTO option VALUES (NULL, "log_level", "fatal")~;
push @statements, q~INSERT INTO option VALUES (NULL, "errors", 1)~;
push @statements, q~INSERT INTO option VALUES (NULL, "skip_cleanup", 0)~;
push @statements, q~INSERT INTO option VALUES (NULL, "offline", 0)~;
push @statements, q~INSERT INTO option VALUES (NULL, "no_conn_cache", 0)~;

push @statements, qq~
    CREATE TABLE filter_type (
        id INTEGER PRIMARY KEY,
        type    TEXT    NOT NULL
    )
~;

push @statements, q~INSERT INTO filter_type VALUES (NULL, "path filter")~;
push @statements, q~INSERT INTO filter_type VALUES (NULL, "module filter")~;

push @statements, qq~
    CREATE TABLE module_filter (
        id INTEGER PRIMARY KEY,
        filter_type_id  INT    NOT NULL,
        pattern         TEXT     NOT NULL,
        comment         TEXT     NULL,
        FOREIGN KEY(filter_type_id) REFERENCES filter_type(id)
    )
~;

push @statements, q~INSERT INTO module_filter VALUES (NULL, 1, "Acme", "don't mirror useless Acme modules")~;
push @statements, q~INSERT INTO module_filter VALUES (NULL, 2, "CGI::Application::Gallery", "I don't really need this module")~;

foreach my $stmt ( @statements ) {
    my $rv = $dbh->do($stmt);
    if($rv < 0){
       print $DBI::errstr;
    } else {
       print "Table created successfully\n";
    }    
}

$dbh->disconnect();

print "Creating database the ugly way done\n";
exit(0);