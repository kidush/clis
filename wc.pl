use strict;
use warnings;
use v5.36;

my $firstArg = $ARGV[0];

sub count_lines {
    my $file = shift;
    open(my $fh, '<', $file) or die "Could not open file '$file': $!";
    my $line_count = 0;
    while (<$fh>) {
        $line_count++;
    }
    close($fh);
    return $line_count;
}

sub count_words {
    my $file = shift;
    open(my $fh, '<', $file) or die "Could not open file '$file': $!";
    my $word_count = 0;
    while (<$fh>) {
        $word_count += scalar split /\s+/;
    }
    close($fh);
    return $word_count;
}

sub count_chars {
    my $file = shift;
    open(my $fh, '<', $file) or die "Could not open file '$file': $!";
    my $char_count = 0;
    while (<$fh>) {
        $char_count += length;
    }
    close($fh);
    return $char_count;
}

if ($firstArg =~ /^-/) {
    my $file = $ARGV[1];
    if ($firstArg eq '-l') {
        my $line_count = count_lines($file);

        print "$line_count $file\n";
    } elsif ($firstArg eq '-w') {
        my $word_count = count_words($file);

        print "$word_count $file\n";
    } elsif ($firstArg eq '-c') {
        my $char_count = count_chars($file);

        print "$char_count $file\n";
    }
} else {
    my $file = $firstArg;

    if (!defined $file) {
        die "You must provide a file to be able to see its lines statistics\n";
    }

    open(my $fh, '<', $file) or die "Could not open file '$file': $!";
    my $line_count = count_lines($file);
    my $word_count = count_words($file);
    my $char_count = count_chars($file);

    print " $line_count  $word_count $char_count $file\n";
}
