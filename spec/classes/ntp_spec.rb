require 'spec_helper'

describe 'ntp' do
  context 'with the default parameters' do
    it { is_expected.to compile }
    it { is_expected.to contain_package('ntpd') }

    it 'should contain the ntp configuration file' do
      is_expected.to contain_file('/etc/ntpd.conf')
      is_expected.to contain_file('/etc/ntpd.conf').that_requires('Package[ntpd]')
      is_expected.to contain_file('/etc/ntpd.conf').that_notifies('Service[ntpd]')
    end

    it { is_expected.to contain_service('ntpd') }
  end

  context 'when specifying the package_name parameter' do
    let(:params) {{ :package_name => 'ntp' }}
    it { is_expected.to contain_package('ntp') }
    it { is_expected.to contain_file('/etc/ntpd.conf').that_requires('Package[ntp]') }
  end

  context 'when specifying the config_file parameter' do
    let(:params) {{ :config_file => '/etc/ntp.conf' }}
    it { is_expected.to contain_file('/etc/ntp.conf') }
  end

  context 'when specifying the service_name parameter' do
    let(:params) {{ :service_name => 'ntp' }}
    it { is_expected.to contain_service('ntp') }
    it { is_expected.to contain_file('/etc/ntpd.conf').that_notifies('Service[ntp]') }
  end
end
