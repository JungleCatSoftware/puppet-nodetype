Facter.add('nodetype') do
  setcode do
    if Facter.value(:vagrant) and Facter.value(:vagrant_nodetype) then
      Facter.value(:vagrant_nodetype)
    else
      'default'
    end
  end
end
