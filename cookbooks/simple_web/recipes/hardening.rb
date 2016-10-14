#
# Cookbook Name:: simple_web
# Recipe:: hardening
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

execute 'DEBIAN_FRONTEND=noninteractive apt-get upgrade -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold"' do
  action :run
end

#template '/etc/sysctl.conf' do
#  source 'sysctl.conf.erb'
#  action :create
#  notifies :run, 'execute[sysctl --system]', :immediately
#end

#execute 'sysctl --system' do
 # action :nothing
#end
