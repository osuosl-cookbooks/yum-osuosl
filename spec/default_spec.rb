require_relative 'spec_helper'

describe 'yum-osuosl::default' do
  ALL_PLATFORMS.each do |p|
    context "#{p[:platform]} #{p[:version]}" do
      cached(:chef_run) do
        ChefSpec::SoloRunner.new(p).converge(described_recipe)
      end
      it 'converges successfully' do
        expect { chef_run }.to_not raise_error
      end
      it do
        expect(chef_run).to create_yum_repository('osuosl').with(
          repositoryid: 'osuosl',
          description: 'OSUOSL repo $releasever - $basearch',
          url: 'http://ftp.osuosl.org/pub/osl/repos/yum/$releasever/$basearch',
          gpgkey: 'http://ftp.osuosl.org/pub/osl/repos/yum/RPM-GPG-KEY-osuosl'
        )
      end
    end
  end
end
