
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Pod-Coverage-TrustPod',
  NAME      => 'Pod::Coverage::TrustPod',
  AUTHOR    => 'Ricardo\ SIGNES\ \<rjbs\@cpan\.org\>',
  ABSTRACT  => 'allow\ a\ module\'s\ pod\ to\ contain\ Pod\:\:Coverage\ hints',
  VERSION   => '0.091470',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Pod::Coverage" => '0',
    "Pod::Eventual::Simple" => '0',
  },
);
