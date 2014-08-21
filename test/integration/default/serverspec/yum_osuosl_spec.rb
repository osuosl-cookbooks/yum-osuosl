require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe yumrepo('osuosl') do
  it { should exist }
  it { should be_enabled }
end
