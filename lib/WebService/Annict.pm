package WebService::Annict;
use 5.008001;
use strict;
use warnings;

our $VERSION = "0.01";
use JSON;
use URI;

use WebService::Annict::Works;

require LWP::UserAgent;
require HTTP::Request;
require HTTP::Request::Common;

sub new {
  my ($class, $args) = @_;
  my $access_token = $args->{access_token};
  my $ua = LWP::UserAgent->new({
    agent => "Perl5 WebService::Annict/$VERSION",
    default_headers => HTTP::Headers->new({
      Authorization => "Bearer $access_token",
    }),
  });

  bless {
    works => Works->new($ua),
    #me => {},
  }, $class;
}



1;
__END__

=encoding utf-8

=head1 NAME

WebService::Annict - It's new $module

=head1 SYNOPSIS

    use WebService::Annict;

=head1 DESCRIPTION

WebService::Annict is ...

=head1 LICENSE

Copyright (C) nukosuke.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

nukosuke E<lt>nukosuke@shibuya.techE<gt>

=cut
