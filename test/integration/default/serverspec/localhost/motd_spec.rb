require 'spec_helper'

describe file('/etc/motd') do
  its(:content) { should match /All the best/ }
end
