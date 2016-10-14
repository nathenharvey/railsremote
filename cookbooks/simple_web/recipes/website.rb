#
# Cookbook Name:: simple_web
# Recipe:: web
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Create the document root directory.
directory node['simple_web']['document_root'] do
  recursive true
end

# Write the homepage
template "#{node['simple_web']['document_root']}/index.html" do
  source 'index.html.erb'
  owner 'www-data'
  group 'www-data'
  mode '0644'
end

# setup CSS
directory "#{node['simple_web']['document_root']}/css" do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  action :create
end

template "#{node['simple_web']['document_root']}/css/style.css" do
  source 'style.css.erb'
  owner 'www-data'
  group 'www-data'
  mode '0755'
  action :create
end

# add images
directory "#{node['simple_web']['document_root']}/images" do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  action :create
end

cookbook_file "#{node['simple_web']['document_root']}/images/chef-logo.png" do
  source 'chef-logo.png'
  owner 'www-data'
  group 'www-data'
  mode '0755'
  action :create
end
