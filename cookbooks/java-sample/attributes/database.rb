default['tomcat']['database']['filesystem'] = 'ext4'
default['tomcat']['database']['lvm_group'] = 'shared'
default['tomcat']['database']['lvm_volume'] = '/dev/sda3'
default['tomcat']['database']['partition_size'] = '10G'

default['tomcat']['database']['cluster'] = 'main'
default['tomcat']['database']['databag'] = 'tomcat'
default['tomcat']['database']['locale'] = 'en_US.utf8'
default['tomcat']['database']['mount_point'] = '/var/lib/postgresql'
default['tomcat']['database']['network'] = '127.0.0.0/8'
default['tomcat']['database']['version'] = '9.4'

default['tomcat']['database']['configuration']['listen_addresses'] = '127.0.0.1'
default['tomcat']['database']['configuration']['port'] = '5432'
default['tomcat']['database']['configuration']['max_connections'] = 300
default['tomcat']['database']['configuration']['shared_buffers'] = '128MB'
default['tomcat']['database']['configuration']['maintenance_work_mem'] = '128MB'
default['tomcat']['database']['configuration']['work_mem'] = '8MB'
default['tomcat']['database']['configuration']['effective_cache_size'] = '2GB'
default['tomcat']['database']['configuration']['log_min_duration_statement'] = 1000
default['tomcat']['database']['configuration']['archive_mode'] = 'on'
default['tomcat']['database']['configuration']['archive_command'] = 'exit 0'
