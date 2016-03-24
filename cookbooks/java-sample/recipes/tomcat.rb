#
# Cookbook Name:: java-sample
# Recipe:: tomcat
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

tomcat_install 'helloworld' do
  if node.attribute?("java-sample") && node["java-sample"].attribute?("tomcat") && node["java-sample"]["tomcat"].attribute?("version")
    version node['java-sample']['tomcat']['version']
  end
end

tomcat_service 'helloworld' do
  action :start
end
