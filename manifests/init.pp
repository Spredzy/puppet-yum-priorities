# Class: yum-priorities
#
#  This class installs yum-priorities package
#
# Actions:
#  Install the yum-priorities package
#
# Requires:
#  An OS that uses yum as it's primary package manager
#
# Sample Usage:
#  include yum-priorities
#
class yum_priorities {

    $yum_priorities = $lsbmajdistrelease ? {
      /4|6/	=> 'yum-plugin-priorities',
      '5'		=> 'yum-priorities',
    }

    package {$yum_priorities :
      ensure    => installed,
    }
}
