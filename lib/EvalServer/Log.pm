package EvalServer::Log;

use strict;
use warnings;
use Function::Parameters;
use EvalServer::Config;
use Exporter 'import';
our @EXPORT=qw/debug/;

fun debug(@log) {
    return unless config->evalserver->debug;
    my ($package, $file, $line, $sub) = caller 0;
    print STDERR "[${package}::$sub #$line]: ", @log, "\n";
}

1;