require_relative '../../spec_helper'

describe 'yum-osuosl::virt' do
  ALL_PLATFORMS.each do |p|
    context "#{p[:platform]} #{p[:version]}" do
      cached(:chef_run) do
        ChefSpec::SoloRunner.new(p).converge(described_recipe)
      end

      it 'converges successfully' do
        expect { chef_run }.to_not raise_error
      end

      case p
      when ALMA_10
        it do
          expect(chef_run).to create_yum_repository('osuosl-virt').with(
            repositoryid: 'osuosl-virt',
            description: 'OSUOSL virt repo $releasever - $basearch',
            url: 'https://ftp.osuosl.org/pub/osl/repos/yum/$releasever/virt/$basearch',
            gpgkey: 'https://ftp.osuosl.org/pub/osl/repos/yum/RPM-GPG-KEY-osuosl-2024'
          )
        end
      when ALMA_9
        it do
          expect(chef_run).to create_yum_repository('osuosl-virt').with(
            repositoryid: 'osuosl-virt',
            description: 'OSUOSL virt repo $releasever - $basearch',
            url: 'https://ftp.osuosl.org/pub/osl/repos/yum/$releasever/virt/$basearch',
            gpgkey: 'https://ftp.osuosl.org/pub/osl/repos/yum/RPM-GPG-KEY-osuosl-2024'
          )
        end
      end
    end
  end
end
