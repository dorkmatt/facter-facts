#
# Extend osfamily fact to include Amazon Linux support
#
# Facter <1.6.12 need this
# https://github.com/puppetlabs/facter/commit/c12d3b6c557df695a7b2b009da099f6a93c7bd31
#
if Facter.value(:operatingsystem) == 'Amazon'
  Facter.add('osfamily') do
    confine :kernel => :linux
    has_weight 50
    setcode { "RedHat" }
  end 
end
