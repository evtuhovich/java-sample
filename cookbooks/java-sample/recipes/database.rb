#
# Cookbook Name:: java-sample
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

if node['java-sample']['database']['databag'].nil? ||
   node['java-sample']['database']['databag'].empty? ||
   !data_bag(node['java-sample']['database']['databag']).include?('databases')

  raise "You should specify databag name in node['java-sample']['database']['databag'] attibute (now: #{node['java-sample']['database']['databag']}) and databag should contains key 'databases'"
end

cluster_name = node['java-sample']['database']['cluster']

postgresql cluster_name do
  cluster_create_options 'locale' => node['java-sample']['database']['locale']
  cluster_version node['java-sample']['database']['version']
  configuration node['java-sample']['database']['configuration']
  hba_configuration(
    [{ type: 'host', database: 'all', user: 'all', address: node['java-sample']['database']['network'], method: 'md5' }]
  )
end

data_bag_item(node['java-sample']['database']['databag'], 'users')['users'].each_pair do |name, options|
  postgresql_user name do
    in_cluster cluster_name
    in_version node['java-sample']['database']['version']
    unencrypted_password options['options']['password']
  end
end

data_bag_item(node['java-sample']['database']['databag'], 'databases')['databases'].each_pair do |name, options|
  postgresql_database name do
    in_cluster cluster_name
    in_version node['java-sample']['database']['version']
    owner options['options']['owner']
  end
end
