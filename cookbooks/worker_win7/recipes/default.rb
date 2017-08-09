#
# Cookbook:: worker_win7
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

windows_service 'WSearch' do
  action [:configure_startup, :start, :enable]
  startup_type :automatic
end

