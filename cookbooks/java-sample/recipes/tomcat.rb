#
# Cookbook Name:: java-sample
# Recipe:: tomcat
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

tomcat_install 'helloworld' do
  version node['java-sample']['tomcat']['version']
end

tomcat_service 'helloworld' do
  action :start
end
