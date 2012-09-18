#
# operatingsystem_humanreadable.rb
# 
# Awful hack to present a "human readable" OS version info
#
if Facter.value(:kernel) == 'Linux'
  Facter.add(:operatingsystem_humanreadable) do
    setcode do
      Facter::Util::Resolution.exec("head -1 /etc/issue")
    end
  end
end
