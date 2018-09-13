require 'serverspec'

set :backend, :exec

describe yumrepo('osuosl') do
  it { should exist }
  it { should be_enabled }
end
