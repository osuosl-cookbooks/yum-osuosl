control 'virt' do
  describe yum.repo('osuosl-virt') do
    it { should exist }
    it { should be_enabled }
  end
end
