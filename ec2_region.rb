#
# Assume region based on example from AWS CloudWatchMonitoringScripts.zip
# which does a similar substr(0, -1) assumption
#

availability_zone = Facter.value('ec2_placement_availability_zone')

if availability_zone
  region = availability_zone.slice(0..-2)

  Facter.add("ec2_region") do
    setcode { region }
  end
end
