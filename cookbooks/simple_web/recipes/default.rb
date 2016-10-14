#
# Cookbook Name:: simple_web
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# ensures apt package list is up to date
include_recipe 'apt::default'

include_recipe 'simple_web::firewall'
include_recipe 'simple_web::apache'
include_recipe 'simple_web::website'
include_recipe 'simple_web::hardening'
