module YumOsuosl
    module Cookbook
        module Helpers

            def virt_yum_baseurl
                case node['platform_version'].to_i
                when 10
                    'https://ftp.osuosl.org/pub/osl/repos/yum/$releasever/$basearch'
                when 8, 9
                    'https://ftp.osuosl.org/pub/osl/repos/yum/$releasever/virt/$basearch'
                end
            end

        end
    end
end

Chef::DSL::Recipe.include ::YumOsuosl::Cookbook::Helpers
Chef::Resource.include ::YumOsuosl::Cookbook::Helpers