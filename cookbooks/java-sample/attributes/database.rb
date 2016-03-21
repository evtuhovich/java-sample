default['java-sample']['database']['filesystem'] = 'ext4'
default['java-sample']['database']['lvm_group'] = 'shared'
default['java-sample']['database']['lvm_volume'] = '/dev/sda3'
default['java-sample']['database']['partition_size'] = '10G'

default['java-sample']['database']['cluster'] = 'main'
default['java-sample']['database']['databag'] = 'tomcat'
default['java-sample']['database']['locale'] = 'en_US.utf8'
default['java-sample']['database']['mount_point'] = '/var/lib/postgresql'
default['java-sample']['database']['network'] = '127.0.0.0/8'
default['java-sample']['database']['version'] = '9.4'

default['java-sample']['database']['configuration']['listen_addresses'] = '127.0.0.1'
default['java-sample']['database']['configuration']['port'] = '5432'
default['java-sample']['database']['configuration']['max_connections'] = 300
default['java-sample']['database']['configuration']['shared_buffers'] = '128MB'
default['java-sample']['database']['configuration']['maintenance_work_mem'] = '128MB'
default['java-sample']['database']['configuration']['work_mem'] = '8MB'
default['java-sample']['database']['configuration']['effective_cache_size'] = '2GB'
default['java-sample']['database']['configuration']['log_min_duration_statement'] = 1000
default['java-sample']['database']['configuration']['archive_mode'] = 'on'
default['java-sample']['database']['configuration']['archive_command'] = 'exit 0'
