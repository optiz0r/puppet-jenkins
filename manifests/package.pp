#
# jenkins::package handles the actual installation of the Jenkins native
# package installation.
#
# The package might not specify a dependency on Java, so you may need to
# specify that yourself
#
# Parameters
# [*package*]
#   Specify the name of the jenkins package (defaults to 'jenkins').
#   Useful for distributions that ship the package under a different name.
class jenkins::package (
    $package = 'jenkins',
){

  if $caller_module_name != $module_name {
    fail("Use of private class ${name} by ${caller_module_name}")
  }

  package { $package:
    ensure => $::jenkins::version;
  }
}
