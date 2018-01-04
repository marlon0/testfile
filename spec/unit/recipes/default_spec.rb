#
# Cookbook Name:: testfile
# Spec:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'testfile::default' do

  context 'When all attributes are default, on an unspecified platform' do

    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      chef_run # This should not raise an error
    end

	it 'has a file at /tmp/test.txt' do
		expect(chef_run).to create_file('/tmp/test.txt')
	end
  end
end
