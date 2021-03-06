# Perl check Skeleton
#!/usr/bin/perl -w 
######################### ltp.pl #################
my $Version='0.1';
my $check_name='ltp.pl';
# Date : Jun 8 2022
# Author  : Paul AZEMA (rigonkmalk at gmail dot com)
# Generic skeleton for perl check.
################################################################
use strict;
use Getopt::Long;
use Switch;
use Data::Dumper;
### Global vars declaration
my ($o_help,$o_textinput,$input);
my $output='';
my %reverse_exit_code = (
    'Ok'        =>  0,
    'Warning'   =>  1,
    'Critical'  =>  2,
    'Unknown'   =>  3,
);
### Vars array definition

my %dict;
$dict{$_} = '0' for qw(0);
$dict{$_} = '1' for qw(1);
$dict{$_} = '2' for qw(a b c 2);
$dict{$_} = '3' for qw(d e f 3);
$dict{$_} = '4' for qw(g h i 4);
$dict{$_} = '5' for qw(j k l 5);
$dict{$_} = '6' for qw(m n o 6);
$dict{$_} = '7' for qw(p q r s 7);
$dict{$_} = '8' for qw(t u v 8);
$dict{$_} = '9' for qw(w x y z 9);
$dict{$_} = '*' for qw(@ # $ % ^ * - _ + =);

### Function declaration
sub usage {
   print "\nLetter To Number '.$check_name.' for Wildix. Version ",$Version,"\n";
   print "GPL Licence - Paul AZEMA\n\n";
   print <<EOT;
-h, --help
   print this help message
-i, --input=HOST
   char or number to convert
EOT
   exit $reverse_exit_code{Unknown};
}
sub get_options () {
    Getopt::Long::Configure ("bundling");
    GetOptions(
        'h|help'          =>   \$o_help,
        'i|input:s'       =>   \$o_textinput
    );
    usage() if (defined ($o_help));
    usage() if (! defined ($o_textinput));
    $o_textinput=lc($o_textinput); # Set input to lower case
}
sub output_display () {
    print $output;
    exit $reverse_exit_code{Ok};
}
### Main
get_options();
my @text = split ("",$o_textinput);
###print Dumper(@text);
printf "Do not take care of %% on the end.\n";
foreach (@text) {
    switch ($_) {
        case (\%dict) {
            $output = $output.$dict{$_};
        }
        else { printf 'Unrecognized character in chain '.$_."\n"; exit 128; }
    }
}
output_display();
