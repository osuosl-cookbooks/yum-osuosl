module YumOsuosl
  module Cookbook
    module Helpers
      def default_gpgkey
        case node['platform_version'].to_i
        when 9, 10
          'https://ftp.osuosl.org/pub/osl/repos/yum/RPM-GPG-KEY-osuosl-2024'
        when 8
          'https://ftp.osuosl.org/pub/osl/repos/yum/RPM-GPG-KEY-osuosl'
        end
      end
    end
  end
end

Chef::DSL::Recipe.include ::YumOsuosl::Cookbook::Helpers
Chef::Resource.include ::YumOsuosl::Cookbook::Helpers
