source 'https://supermarket.chef.io'

group :base do
  cookbook 'apt'
  cookbook 'bsw_gpg'
  cookbook 'certificate'
  cookbook 'chef-client'
  cookbook 'chef-vault'
  cookbook 'cron'
  cookbook 'helpers_express42', git: 'git@github.com:express42-cookbooks/helpers_express42.git'
  cookbook 'locale'
  cookbook 'lvm'
  cookbook 'ntp'
  cookbook 'openssh'
  cookbook 'os-hardening'
  cookbook 'postfix', git: 'git@github.com:express42-cookbooks/postfix.git'
  cookbook 'resolver'
  cookbook 'rsyslog', git: 'git@github.com:express42-cookbooks/rsyslog.git'
  cookbook 'ssh_known_hosts'
  cookbook 'sudo'
  cookbook 'sysctl'
  cookbook 'timezone-ii', git: 'git@github.com:L2G/timezone-ii.git'
  cookbook 'user'
end

group :tomcat do
  cookbook 'postgresql_lwrp'
  cookbook 'tomcat'
  cookbook 'java'
  cookbook 'java-sample', path: "cookbooks/java-sample"
end
