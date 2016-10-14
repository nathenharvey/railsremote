control 'ssh-6.2.1' do
  impact 1.0
  title 'Set SSH Protocol to 2'
  desc "
    SSH supports two different ...
  "

  describe sshd_config do
    its('Protocol') { should cmp('2') }
  end
end


