#
# Cookbook Name:: java-sample
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

root = "/var/lib/postgresql/"

files = %w(jpetstore-schema.sql jpetstore-dataload.sql)

files.each do |file|
  cookbook_file "#{root}/#{file}" do
    owner "postgres"
    group "postgres"
  end

  bash "import #{file}" do
    user "postgres"
    code <<-EOH
      psql tomcat < #{root}/#{file}
      touch #{root}/#{file}.done
    EOH
    creates "#{root}/#{file}.done"
  end
end
