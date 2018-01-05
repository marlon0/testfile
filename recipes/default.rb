#
# Cookbook Name:: testfile
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.
# 


package 'net-tools' do
	action :install
end

file '/tmp/test.txt' do
	content "this is a test"
	action :create
end


