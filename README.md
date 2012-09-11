puppet-yum-priorities
=====================

A Puppet module that ensures yum-priorities is installed

# About

yum-priorities is a simple package that can be installed with a Puppet DSL package resource.
This module simply hide the fact that according to the version of EL the package name differs.

* Release 4 and 6 : yum-plugin-priorities
* Release 5 : yum-priorities

The purpose of this module is to simply hide this fact and allow on to add  `include yum-priorities` in her
puppet manifests.

# Tests

* CentOS 6.x
* CentOS 5.x
* This should work on all RHEL variant

# License

General Public License version 3

