#
# Cookbook:: testbook
# Recipe:: default
#
# Copyright:: 2017, Maduro Engineering, All Rights Reserved.

package 'nginx' do
  action :install
end

service 'nginx' do
  supports status: true, restart: true, reload: true
  action [:start, :enable]
end
