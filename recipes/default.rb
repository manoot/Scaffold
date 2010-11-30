#
# Cookbook Name:: scaffold
# Recipe:: default
#
# Copyright 2010, Travis Mathis(travis.mathis@millicorp.com) - Millicorp
#
# All rights reserved - Do Not Redistribute
#

template "/etc/hosts" do
  source "hosts.erb"
  action :create
  mode 0755
end

template "/etc/sysconfig/network" do
  source "network.erb"
  action :create
  mode 0755
end

template "/etc/sysconfig/network-scripts/ifcfg-eth0" do
  source "network-scripts.erb"
  action :create
  mode 0755
end
