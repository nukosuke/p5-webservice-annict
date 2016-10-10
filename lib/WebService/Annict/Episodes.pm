package WebService::Annict::Episodes;
use 5.008001;
use strict;
use warnings;

use URI;

sub new {
  my ($class, $ua) = @_;

  bless {
    ua => $ua,
  }, $class;
}

sub get {

}

1;
