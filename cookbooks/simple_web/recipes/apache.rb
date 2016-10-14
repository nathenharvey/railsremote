#
# Cookbook Name:: simple_web
# Recipe:: apache
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'apache2' do
  action :install
end

service 'apache2' do
  action :enable
end

include_recipe'apache2::mod_ssl'

template '/etc/apache2/sites-available/default.conf' do
  source 'default.conf.erb'
  action :create
end

apache_site 'default' do
  enable true
end

template '/etc/apache2/sites-available/default-ssl.conf' do
  source 'default-ssl.conf.erb'
  action :create
end

directory '/etc/apache2/ssl' do
  owner 'root'
  group 'root'
  mode '0700'
  action :create
end

cookbook_file '/etc/apache2/ssl/apache.crt' do
  source 'apache.crt'
  owner 'root'
  group 'root'
  mode '0600'
  action :create
end

cookbook_file '/etc/apache2/ssl/apache.key' do
  source 'apache.key'
  owner 'root'
  group 'root'
  mode '0600'
  action :create
end

apache_site 'default-ssl' do
  enable true
end

service 'apache2' do
  action :reload
end
