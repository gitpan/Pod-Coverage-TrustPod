
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'allow a module\'s pod to contain Pod::Coverage hints',
  'AUTHOR' => 'Ricardo SIGNES <rjbs@cpan.org>',
  'BUILD_REQUIRES' => {
    'BaseWithNoPod' => '0',
    'Carp::Heavy' => '0',
    'Test::More' => '0'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'Pod-Coverage-TrustPod',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Pod::Coverage::TrustPod',
  'PREREQ_PM' => {
    'Pod::Coverage::CountParents' => '0',
    'Pod::Eventual::Simple' => '0',
    'Pod::Find' => '0'
  },
  'VERSION' => '0.092831',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



