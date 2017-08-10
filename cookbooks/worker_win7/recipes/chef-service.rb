#
# Cookbook Name:: Install_Chef-Client_Windows_Service_5_MIC
# Recipe:: default
#
# Copyright (c) 2015 Ryan Irujo, All Rights Reserved.
 
# Installing the Chef-Client Windows Service,

powershell_script 'Install Chef-Client Windows Service' do
  code 'chef-service-manager -a install'
end
 
# Enabling and Starting the Chef-Client Service.

service 'chef-client' do
  action [:enable, :start]
end
