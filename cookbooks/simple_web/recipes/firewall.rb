#
# Cookbook Name:: simple_web
# Recipe:: firewall
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'firewall::default'

ports = node['simple_web']['open_ports']
firewall_rule "open ports #{ports}" do
  port ports
end
