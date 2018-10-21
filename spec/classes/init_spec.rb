require 'spec_helper'

describe 'zsh' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts
      end

      it { is_expected.to compile.with_all_deps }
    end
    next unless facts[:os]['family'].eql? 'Solaris'
    context "on sun4v Solaris #{facts[:os]['release']['major']}" do
      let(:facts) do
        facts.merge(os: {
                      'architecture' => 'sun4v',
                      'hardware' => 'sun4v',
                    })
      end

      it { is_expected.to compile.with_all_deps }
    end
  end
end
