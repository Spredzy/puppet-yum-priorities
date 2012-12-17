# Facter: major_version
#
#   Indicate the EL major version release number
#
Facter.add("major_version") do
  setcode do
    version = Facter.value('operatingsystemrelease')
    major_version = version.split('.')[0]
    major_version
  end
end
