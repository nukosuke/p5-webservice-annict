use strict;
use Test::More 0.98;
use LWP::UserAgent;
use WebService::Annict::Works;

my $access_token = $ENV{ANNICT_ACCESS_TOKEN};

my $ua = LWP::UserAgent->new({
  agent => "Perl5 WebService::Annict::Works/$VERSION",
  default_headers => {
    Authorization => "Bearer $access_token",
  },
});

my $works = WebService::Annict::Works->new($ua);

isa_ok $works, 'WebService::Annict::Works';

done_testing;
