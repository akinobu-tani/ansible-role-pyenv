require '/tmp/kitchen/spec/spec_helper.rb'

set :disable_sudo, true

describe command('$SHELL -lc "pyenv --version"') do
  its(:exit_status) { should eq 0 }
end

describe command('$SHELL -lc "pyenv commands"') do
  its(:stdout) { should contain 'virtualenv' }
end

describe command('$SHELL -lc "python --version"') do
  its(:stdout) { should contain 'Python 3.6.0' }
end
